-- Rankea  los top 3 productos más rentables (diferencia entre precio venta y compra)
WITH rentabilidad_producto AS (
	SELECT p.id_producto, p.nombre,
		SUM((dv.precio_unitario - p.precio_compra) * dv.cantidad) AS utilidad_total
	FROM detalle_venta dv
	JOIN producto p ON dv.id_producto = p.id_producto
	JOIN venta v ON dv.id_venta = v.id_venta
	WHERE v.estado = 'COMPLETADA'
	GROUP BY p.id_producto, p.nombre
)


, ranking_producto AS (
	SELECT *,
		RANK() OVER(ORDER BY utilidad_total DESC) AS ranking
	FROM rentabilidad_producto
)

SELECT *
FROM ranking_producto
WHERE ranking <= 3;
 	



-- calcula el resumen mensual de ventas: total de ventas, monto total y promedio por venta
WITH resumen_mensual AS (
	SELECT TO_CHAR(fecha_venta, 'YYYY-MM') AS mes, COUNT(id_venta) AS total_ventas, SUM(total) monto_total, AVG(total) AS promedio_venta 
	FROM venta
	GROUP BY mes
	ORDER BY mes
)

SELECT *
FROM resumen_mensual;



-- Muestra el ranking de vendedores por total vendido
WITH total_vendido_por_vendedores AS(
	SELECT u.id_usuario, u.nombres AS vendedores, SUM(v.total) AS total_vendido
	FROM usuario u
	JOIN rol r ON u.id_rol = r.id_rol
	JOIN venta v ON u.id_usuario = v.id_usuario
	WHERE v.estado = 'COMPLETADA'
	AND r.nombre LIKE ('vendedor%')
	GROUP BY u.id_usuario, u.nombres
)


,ranking_vendedores AS (
	SELECT *,
		RANK() OVER(ORDER BY total_vendido DESC) AS rk
	FROM total_vendido_por_vendedores
)

SELECT *
FROM ranking_vendedores;



-- ¿Cuál es el producto estrella por categoria (el más vendido dentro de cada una)?
WITH ventas_por_producto AS (
	SELECT p.id_producto, p.nombre AS producto, c.nombre AS categoria, SUM(dv.cantidad) AS total_vendido
	FROM detalle_venta dv
	JOIN producto p ON dv.id_producto = p.id_producto
	JOIN categorias c ON p.id_categoria = c.id_categoria
	JOIN venta v ON dv.id_venta = v.id_venta
	WHERE v.estado = 'COMPLETADA'
	GROUP BY p.id_producto, p.nombre, c.nombre
)

, ranking_producto AS (
	SELECT *, 
		ROW_NUMBER() OVER(PARTITION BY categoria ORDER BY total_vendido DESC) AS rk
	FROM ventas_por_producto
)

SELECT * 
FROM ranking_producto
WHERE rk = 1;




-- Calcula la tasa de devolución por producto
WITH ventas_producto AS (
	SELECT dv.id_producto, SUM(dv.cantidad) AS total_vendido
	FROM detalle_venta dv
	JOIN venta v ON dv.id_venta = v.id_venta
	WHERE v.estado = 'COMPLETADA'
	GROUP BY dv.id_producto
)

, devoluciones_producto AS (
	SELECT dd.id_producto, 
	SUM(dd.cantidad) AS total_devuelto
	FROM detalle_devolucion dd
	JOIN devolucion d ON dd.id_devolucion = d.id_devolucion
	WHERE d.estado = 'APROBADA'
	GROUP BY dd.id_producto
)

SELECT p.id_producto, p.nombre AS producto, vp.total_vendido, 
	COALESCE(dp.total_devuelto, 0) AS total_devuelto,

	ROUND(
		(COALESCE(dp.total_devuelto, 0) * 100.0)
		/ NULLIF(vp.total_vendido, 0), 2
	) AS tasa_devolucion

FROM ventas_producto vp
LEFT JOIN devoluciones_producto dp ON vp.id_producto = dp.id_producto
JOIN producto p ON vp.id_producto = p.id_producto
ORDER BY tasa_devolucion DESC;




-- Evolución del stock de los 5 productos más movidos
WITH productos_mas_movidos AS (
    SELECT id_producto, COUNT(*) AS total_movimientos
    FROM movimiento_stock
    GROUP BY id_producto
    ORDER BY total_movimientos DESC
    LIMIT 5
)

SELECT p.nombre AS producto, ms.tipo_movimiento, ms.cantidad,
    ms.stock_anterior, ms.stock_nuevo, ms.fecha, ms.motivo
FROM movimiento_stock ms
JOIN producto p ON ms.id_producto = p.id_producto
WHERE ms.id_producto IN (SELECT id_producto FROM productos_mas_movidos)
ORDER BY p.nombre, ms.fecha ASC;




-- Clientes que compraron en todos los trimestres del 2024
WITH trimestres_por_cliente AS (
    SELECT id_cliente,
        COUNT(DISTINCT EXTRACT(QUARTER FROM fecha_venta)) AS trimestres_activos
    FROM venta
    WHERE estado = 'COMPLETADA'
    AND fecha_venta BETWEEN '2024-01-01' AND '2024-12-31'
    GROUP BY id_cliente
)

SELECT c.id_cliente, c.nombres, c.apellidos, c.razon_social, tpc.trimestres_activos
FROM trimestres_por_cliente tpc
JOIN cliente c ON tpc.id_cliente = c.id_cliente
WHERE tpc.trimestres_activos = 4
ORDER BY c.apellidos;




-- Almacén con mejor rendimiento: ventas vs devoluciones
WITH ventas_almacen AS (
    SELECT id_almacen, SUM(total) AS total_ventas, COUNT(*) AS nro_ventas
    FROM venta
    WHERE estado = 'COMPLETADA'
    GROUP BY id_almacen
)

, devoluciones_almacen AS (
    SELECT v.id_almacen, SUM(d.monto_devuelto) AS total_devoluciones, COUNT(*) AS nro_devoluciones
    FROM devolucion d
    JOIN venta v ON d.id_venta = v.id_venta
    WHERE d.estado = 'APROBADA'
    GROUP BY v.id_almacen
)

SELECT a.nombre AS almacen,
    va.total_ventas,
    COALESCE(da.total_devoluciones, 0) AS total_devoluciones,
    va.nro_ventas,
    COALESCE(da.nro_devoluciones, 0) AS nro_devoluciones,
    ROUND(va.total_ventas - COALESCE(da.total_devoluciones, 0), 2) AS rendimiento_neto
FROM ventas_almacen va
LEFT JOIN devoluciones_almacen da ON va.id_almacen = da.id_almacen
JOIN almacen a ON va.id_almacen = a.id_almacen
ORDER BY rendimiento_neto DESC;




-- Acumulado de ventas por día en diciembre 2024
SELECT
    DATE(fecha_venta) AS dia,
    COUNT(id_venta) AS ventas_del_dia,
    SUM(total) AS monto_del_dia,
    SUM(SUM(total)) OVER (ORDER BY DATE(fecha_venta)) AS total_acumulado
FROM venta
WHERE estado = 'COMPLETADA'
AND fecha_venta BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY DATE(fecha_venta)
ORDER BY dia ASC;



-- Clientes VIP: gasto total superior al promedio general
WITH gasto_por_cliente AS (
    SELECT c.id_cliente,
        COALESCE(c.nombres || ' ' || c.apellidos, c.razon_social) AS cliente,
        c.tipo_cliente,
        SUM(v.total) AS gasto_total
    FROM cliente c
    JOIN venta v ON c.id_cliente = v.id_cliente
    WHERE v.estado = 'COMPLETADA'
    GROUP BY c.id_cliente, c.nombres, c.apellidos, c.razon_social, c.tipo_cliente
)

SELECT *, 
    ROUND((SELECT AVG(gasto_total) FROM gasto_por_cliente), 2) AS promedio_general,
    ROUND(gasto_total - (SELECT AVG(gasto_total) FROM gasto_por_cliente), 2) AS diferencia
FROM gasto_por_cliente
WHERE gasto_total > (SELECT AVG(gasto_total) FROM gasto_por_cliente)
ORDER BY gasto_total DESC;
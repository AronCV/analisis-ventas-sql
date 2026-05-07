
-- Mostrar el total vendido por mes durante todo el 2024
SELECT TO_CHAR(fecha_venta, 'Month') AS mes, SUM(total) AS total_vendido
FROM venta
WHERE estado = 'COMPLETADA'
GROUP BY mes
ORDER BY mes ASC;


-- ¿Cuáles son los 5 productos más vendidos (por cantidad)?
SELECT p.id_producto, p.nombre, SUM(de.cantidad) AS producto_mas_vendido
FROM producto p
JOIN detalle_venta de ON p.id_producto = de.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY producto_mas_vendido DESC
LIMIT 5;


-- Lista cada venta mostrando el nombre del cliente, vendedor, almacén y total
SELECT v.id_venta AS venta, c.nombres AS cliente, u.nombres AS vendedor, a.nombre AS almacen, SUM(v.total) AS total_venta
FROM venta v
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN usuario u ON v.id_usuario = u.id_usuario
JOIN almacen a ON v.id_almacen = a.id_almacen
WHERE c.nombres IS NOT NULL
GROUP BY v.id_venta, c.nombres, u.nombres, a.nombre
ORDER BY total_venta DESC;


-- ¿Qué categoria generó más ingresos en ventas?
SELECT c.nombre AS categoria, SUM(de.precio_unitario * de.cantidad) AS total_venta
FROM detalle_venta de
JOIN producto p ON de.id_producto = p.id_producto
JOIN categorias c ON p.id_categoria = c.id_categoria
JOIN venta v ON de.id_venta = v.id_venta
WHERE estado = 'COMPLETADA'
GROUP BY c.nombre
ORDER BY total_venta DESC;


-- Muestra los clientes que han realizado más de 3 compras
SELECT c.id_cliente, c.nombres, c.apellidos, COUNT(v.id_venta) AS total_compras
FROM cliente c
JOIN venta v ON c.id_cliente = v.id_cliente
WHERE v.estado = 'COMPLETADA'
GROUP BY c.id_cliente, c.nombres, c.apellidos
HAVING COUNT(v.id_venta) > 3
ORDER BY total_compras DESC;



-- ¿Cuál es el ticket promedio de venta por tipo de comprobante (boleta, factura, ticket)?

SELECT tipo_comprobante, AVG(total) AS promedio_venta
FROM venta
GROUP BY tipo_comprobante
ORDER BY promedio_venta DESC;


-- Lista los productos que nunca han sido vendidos
SELECT p.nombre AS producto, de.id_producto
FROM producto p
LEFT JOIN detalle_venta de ON p.id_producto = de.id_producto
WHERE de.id_producto IS NULL;



-- Muestra el total comprado por proveedor (monto total en compras confirmadas y no anulada)
SELECT  pro.id_proveedor, SUM(com.total) AS total_comprado ,com.estado
FROM proveedor pro
JOIN compra com ON pro.id_proveedor = com.id_proveedor
WHERE com.estado IN ('CONFIRMADA', 'ANULADA')
GROUP BY pro.id_proveedor, com.estado
ORDER BY total_comprado DESC;


-- ¿Qué vendedor regristró más ventas y cuánto sumaron en total?
SELECT r.nombre AS rol, u.id_usuario, u.nombres AS usuario, SUM(v.total) AS total_venta
FROM usuario u
JOIN rol r ON u.id_rol = r.id_rol
JOIN venta v ON u.id_usuario = v.id_usuario
WHERE r.nombre LIKE 'vendedor%'
GROUP BY r.nombre, u.id_usuario, u.nombres
ORDER BY total_venta DESC;



-- Lista las devoluciones aprobadas mostrando el motivo, monto y el comprobante de la venta original
SELECT dev.id_devolucion, dev.motivo, dev.monto_devuelto, v.nro_comprobante, dev.estado
FROM devolucion dev
JOIN venta v ON dev.id_venta = v.id_venta
WHERE dev.estado = 'APROBADA'
ORDER BY dev.monto_devuelto DESC;
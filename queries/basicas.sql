-- CONSULTAS:

-- Todos los productos actvos con su nombre, precio de compra y precio de venta
SELECT nombre, precio_compra, precio_venta 
FROM producto
WHERE activo = 'TRUE'

-- Todos los clientes de tipo 'NATURAL' ordenados por apellido alfabéticamente
SELECT apellidos, nombres, tipo_cliente
FROM cliente
WHERE tipo_cliente = 'NATURAL'
ORDER BY apellidos ASC;

-- ¿Cuántos productos hay por cada categoria?
SELECT catg.id_categoria , catg.nombre AS nombre_Categoria, COUNT(p.id_producto) AS total_productos
FROM producto p
JOIN categorias catg ON p.id_categoria = catg.id_categoria -- une la tabla 'categorias' + 'producto'
GROUP BY catg.id_categoria, catg.nombre -- aqui agrupo el resultado del 'COUNT' que sería el total de productos a catg.id_categoria y catg.nombre de de la tabla'categorias'
ORDER BY catg.id_categoria ASC; -- ordena la id_categoria de menor a mayor


-- Mostrar las ventas con estado 'COMPLETADA' ordenadas de la más reciente a la más antigua
SELECT id_venta, id_cliente, id_usuario, id_almacen, estado, fecha_venta
FROM venta
WHERE estado = 'COMPLETADA'
ORDER BY fecha_venta ASC;


-- Proveedores que tienen RUC registrado y están activos
SELECT id_proveedor, activo
FROM proveedor
WHERE ruc IS NOT NULL
AND activo = TRUE;


-- ?Qué productos tienen el stock actual por debajo del stock minimo?
SELECT nombre, stock_actual, stock_minimo
FROM producto
WHERE stock_actual < stock_minimo


-- Mostrar todos los usuarios con el rol correspondiente
SELECT u.nombres, r.nombre
FROM usuario u
JOIN rol r ON u.id_rol = r.id_rol


-- Las compras realizadas durante el primer trimestre del 2024 (enero - marzo)
SELECT id_compra, id_usuario, fecha_compra
FROM compra
WHERE fecha_compra >= '2024.01.01'
AND fecha_compra < '2024.04.01'
ORDER BY fecha_compra ASC;
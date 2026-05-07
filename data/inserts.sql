-- INSERTACIÓN DE DATOS --

-- CATEGORIAS (10)
INSERT INTO categorias (nombre, descripcion, activo) VALUES
('Polos y Camisetas', 'Prendas de manga corta y larga para hombre y mujer', TRUE),
('Pantalones', 'Jeans, drill, jogger y otros pantalones', TRUE),
('Vestidos y Faldas', 'Vestidos casuales, formales y faldas de todo tipo', TRUE),
('Ropa Interior', 'Boxers, calzones, sostenes y medias', TRUE),
('Casacas y Abrigos', 'Casacas de cuero, tela, polar y abrigos de invierno', TRUE),
('Ropa Deportiva', 'Shorts, licras, polos deportivos y buzos', TRUE),
('Calzado', 'Zapatillas, sandalias, zapatos y botas', TRUE),
('Accesorios', 'Cinturones, gorras, bufandas y carteras', TRUE),
('Ropa de Niños', 'Prendas para niños y niñas de 0 a 12 años', TRUE),
('Ropa Formal', 'Camisas, blazers, pantalones de vestir y trajes', TRUE);



-- PROVEEDORES (12)
INSERT INTO proveedor (razon_social, ruc, telefono, email, direccion, contacto, activo) VALUES
('Confecciones Gamarra SAC', '20501234567', '01-3241100', 'ventas@gamarra.com.pe', 'Jr. Prolongacion Huanuco 1234, La Victoria, Lima', 'Carlos Mamani', TRUE),
('Textiles Imperio EIRL', '20512345678', '01-3256789', 'info@textilimperio.pe', 'Av. Grau 890, La Victoria, Lima', 'Rosa Quispe', TRUE),
('Distribuidora Moda Peru SAC', '20523456789', '956123456', 'contacto@modaperu.com', 'Calle Aviacion 456, San Luis, Lima', 'Luis Flores', TRUE),
('Inversiones Tela Total SRL', '20534567890', '01-4521300', 'ventas@telatotal.pe', 'Av. Argentina 2300, Callao', 'Maria Ccasa', TRUE),
('Importaciones StyleMax SAC', '20545678901', '998765432', 'stylemax@gmail.com', 'Av. Venezuela 1500, Breña, Lima', 'Pedro Huanca', TRUE),
('Confecciones Don Pepe EIRL', '20556789012', '01-3298765', 'donpepe@outlook.com', 'Jr. Gamarra 340, La Victoria, Lima', 'Jose Ramos', TRUE),
('Textileria Andina SAC', '20567890123', '987654321', 'andina@textiles.pe', 'Carretera Central Km 5, Ate, Lima', 'Ana Torres', TRUE),
('Moda Express Peru SAC', '20578901234', '01-6123400', 'info@modaexpress.pe', 'Av. Javier Prado 890, San Borja, Lima', 'Carmen Vega', TRUE),
('Distribuidora Chic Lima SRL', '20589012345', '976543210', 'chiclima@ventas.com', 'Jr. Ica 234, Centro de Lima', 'Roberto Silva', TRUE),
('Importadora FashionTop SAC', '20590123456', '01-4445566', 'fashiontop@moda.pe', 'Av. Tupac Amaru 1200, Independencia, Lima', 'Lucia Mendez', TRUE),
('Tejidos y Bordados Lima EIRL', '20601234567', '965432109', 'tejidos@bordados.pe', 'Jr. Cusco 789, La Victoria, Lima', 'Miriam Condori', TRUE),
('Almacenes Textil Norte SRL', '20612345678', '01-5234567', 'norte@textil.com', 'Av. Naranjal 456, Los Olivos, Lima', 'Fernando Diaz', TRUE);



-- ALMACENES (4)
INSERT INTO almacen (nombre, ubicacion, activo) VALUES
('Almacen Principal', 'Jr. Las Flores 123, Miraflores, Lima', TRUE),
('Tienda Centro Lima', 'Jr. Union 456, Cercado de Lima', TRUE),
('Tienda San Miguel', 'Av. La Marina 789, San Miguel, Lima', TRUE),
('Deposito Gamarra', 'Jr. Prolongacion Huanuco 500, La Victoria, Lima', TRUE);


-- TIPO DE DOCUMENTO (4)
INSERT INTO tipo_documento (nombre, codigo) VALUES
('DNI', 'DNI'),
('RUC', 'RUC'),
('Carnet de Extranjeria', 'CE'),
('Pasaporte', 'PAS');


-- ROLES (4)
INSERT INTO rol (nombre, descripcion) VALUES
('Administrador', 'Acceso total al sistema'),
('Vendedor', 'Puede registrar ventas y consultar productos'),
('Almacenero', 'Gestiona stock, compras y movimientos de inventario'),
('Cajero', 'Maneja caja, ventas y pagos');
 
-- USUARIOS (10)
INSERT INTO usuario (id_rol, username, password_hash, nombres, apellidos, email, activo) VALUES
(1, 'admin', '$2b$10$hashadmin123456789012345678901234567890', 'Diego', 'Quispe Mamani', 'diego.admin@tiendaropa.pe', TRUE),
(2, 'vendedor01', '$2b$10$hashvend01234567890123456789012345678', 'Lucia', 'Torres Flores', 'lucia.torres@tiendaropa.pe', TRUE),
(2, 'vendedor02', '$2b$10$hashvend02345678901234567890123456789', 'Fabian', 'Huanca Ramos', 'fabian.huanca@tiendaropa.pe', TRUE),
(3, 'almacen01', '$2b$10$hashalm01234567890123456789012345678', 'Marco', 'Ccasa Vega', 'marco.ccasa@tiendaropa.pe', TRUE),
(4, 'cajero01', '$2b$10$hashcaj01234567890123456789012345678', 'Sandra', 'Mendez Silva', 'sandra.mendez@tiendaropa.pe', TRUE),
(4, 'cajero02', '$2b$10$hashcaj02345678901234567890123456789', 'Kevin', 'Diaz Condori', 'kevin.diaz@tiendaropa.pe', TRUE),
(2, 'vendedor03', '$2b$10$hashvend03456789012345678901234567890', 'Patricia', 'Rojas Cano', 'patricia.rojas@tiendaropa.pe', TRUE),
(3, 'almacen02', '$2b$10$hashalm02345678901234567890123456789', 'Hector', 'Puma Arias', 'hector.puma@tiendaropa.pe', TRUE),
(2, 'vendedor04', '$2b$10$hashvend04567890123456789012345678901', 'Carla', 'Neyra Paz', 'carla.neyra@tiendaropa.pe', TRUE),
(1, 'supervisor', '$2b$10$hashsup01234567890123456789012345678', 'Angela', 'Vargas Tello', 'angela.vargas@tiendaropa.pe', TRUE);


-- TIPO DE PAGO (5)
INSERT INTO tipo_pago (nombre) VALUES
('Efectivo'),
('Tarjeta de Debito'),
('Tarjeta de Credito'),
('Yape / Plin'),
('Transferencia Bancaria');



-- CLIENTES (40)
INSERT INTO cliente (id_tipo_doc, nro_documento, nombres, apellidos, razon_social, telefono, email, direccion, tipo_cliente, activo) VALUES
(1, '45123678', 'Maria', 'Garcia Lopez', NULL, '987654321', 'maria.garcia@gmail.com', 'Av. Brasil 123, Breña', 'NATURAL', TRUE),
(1, '72345689', 'Carlos', 'Quispe Huanca', NULL, '976543210', 'carlos.quispe@hotmail.com', 'Jr. Lima 456, SJL', 'NATURAL', TRUE),
(1, '65432198', 'Ana', 'Torres Mendez', NULL, '965432109', 'ana.torres@gmail.com', 'Av. Tupac Amaru 789, Comas', 'NATURAL', TRUE),
(1, '43216789', 'Luis', 'Flores Ramos', NULL, '954321098', 'luis.flores@yahoo.com', 'Jr. Cusco 234, La Victoria', 'NATURAL', TRUE),
(1, '87654321', 'Rosa', 'Ccasa Vega', NULL, '943210987', 'rosa.ccasa@gmail.com', 'Av. Colonial 567, Callao', 'NATURAL', TRUE),
(1, '76543218', 'Pedro', 'Silva Diaz', NULL, '932109876', 'pedro.silva@outlook.com', 'Jr. Carabaya 890, Lima', 'NATURAL', TRUE),
(1, '54321987', 'Carmen', 'Mamani Condori', NULL, '921098765', 'carmen.mamani@gmail.com', 'Av. Grau 123, La Victoria', 'NATURAL', TRUE),
(1, '32198765', 'Jose', 'Vargas Puma', NULL, '910987654', 'jose.vargas@gmail.com', 'Jr. Loreto 456, Miraflores', 'NATURAL', TRUE),
(1, '21987654', 'Luciana', 'Neyra Arias', NULL, '909876543', 'luciana.neyra@hotmail.com', 'Av. Arequipa 789, Lince', 'NATURAL', TRUE),
(1, '19876543', 'Roberto', 'Paz Cano', NULL, '998877665', 'roberto.paz@gmail.com', 'Jr. Ica 234, Barranco', 'NATURAL', TRUE),
(1, '48765432', 'Verónica', 'Huanca Torres', NULL, '987766554', 'veronica.h@gmail.com', 'Av. Universitaria 567, SMP', 'NATURAL', TRUE),
(1, '57654321', 'Miguel', 'Rojas Perez', NULL, '976655443', 'miguel.rojas@gmail.com', 'Jr. Arequipa 890, Surquillo', 'NATURAL', TRUE),
(1, '66543210', 'Diana', 'Lopes Castro', NULL, '965544332', 'diana.lopes@yahoo.com', 'Av. Angamos 123, Surco', 'NATURAL', TRUE),
(1, '75432109', 'Fernando', 'Choque Nina', NULL, '954433221', 'fer.choque@gmail.com', 'Jr. Huallaga 456, Lima', 'NATURAL', TRUE),
(1, '84321098', 'Sofía', 'Calla Apaza', NULL, '943322110', 'sofia.calla@hotmail.com', 'Av. Primavera 789, Surco', 'NATURAL', TRUE),
(1, '93210987', 'Andres', 'Benites Cruz', NULL, '932211009', 'andres.b@gmail.com', 'Jr. Callao 234, Bellavista', 'NATURAL', TRUE),
(1, '12309876', 'Claudia', 'Soto Inga', NULL, '921100998', 'claudia.soto@gmail.com', 'Av. Benavides 567, Miraflores', 'NATURAL', TRUE),
(1, '23098765', 'Jhon', 'Vilca Tito', NULL, '910099887', 'jhon.vilca@outlook.com', 'Jr. Tacna 890, Lima', 'NATURAL', TRUE),
(1, '34987654', 'Natalia', 'Mejia Ponce', NULL, '909988776', 'natalia.m@gmail.com', 'Av. Venezuela 123, Breña', 'NATURAL', TRUE),
(1, '45876543', 'Rodrigo', 'Alvarado Reyes', NULL, '998877554', 'rodrigo.a@gmail.com', 'Jr. Zorritos 456, Lima', 'NATURAL', TRUE),
(1, '56765432', 'Paola', 'Gutierrez Mora', NULL, '987766443', 'paola.g@hotmail.com', 'Av. Salaverry 789, Jesus Maria', 'NATURAL', TRUE),
(1, '67654321', 'Cristian', 'Herrera Leon', NULL, '976655332', 'cristian.h@gmail.com', 'Jr. Quilca 234, Lima', 'NATURAL', TRUE),
(1, '78543210', 'Valeria', 'Espinoza Ruiz', NULL, '965544221', 'valeria.e@yahoo.com', 'Av. Arenales 567, Lince', 'NATURAL', TRUE),
(1, '89432109', 'Sebastian', 'Cabrera Tello', NULL, '954433110', 'sebastian.c@gmail.com', 'Jr. Chancay 890, Lima', 'NATURAL', TRUE),
(1, '90321098', 'Daniela', 'Fuentes Cano', NULL, '943322009', 'daniela.f@gmail.com', 'Av. Petit Thouars 123, Santa Beatriz', 'NATURAL', TRUE),
(1, '01210987', 'Enzo', 'Paredes Lara', NULL, '932211998', 'enzo.p@hotmail.com', 'Jr. Ayacucho 456, Lima', 'NATURAL', TRUE),
(1, '12100987', 'Jimena', 'Salinas Vera', NULL, '921100887', 'jimena.s@gmail.com', 'Av. 28 de Julio 789, Miraflores', 'NATURAL', TRUE),
(1, '23099876', 'Alexis', 'Cordova Nunez', NULL, '910099776', 'alexis.c@gmail.com', 'Jr. Puno 234, La Victoria', 'NATURAL', TRUE),
(1, '34988765', 'Camila', 'Delgado Parco', NULL, '909988665', 'camila.d@yahoo.com', 'Av. Ejercito 567, Miraflores', 'NATURAL', TRUE),
(1, '45877654', 'Gabriel', 'Asto Llamoca', NULL, '998877443', 'gabriel.a@gmail.com', 'Jr. Huancavelica 890, Lima', 'NATURAL', TRUE),
(2, '20456789012', NULL, NULL, 'Boutique Elegance SAC', '01-4456789', 'compras@elegance.pe', 'Av. Larco 450, Miraflores', 'JURIDICO', TRUE),
(2, '20467890123', NULL, NULL, 'Tienda ModaYa EIRL', '01-3345678', 'info@modaya.com', 'Jr. Union 234, Lima', 'JURIDICO', TRUE),
(2, '20478901234', NULL, NULL, 'Fashion Store Lima SAC', '01-2234567', 'pedidos@fashionlima.pe', 'Av. Javier Prado 1200, San Isidro', 'JURIDICO', TRUE),
(2, '20489012345', NULL, NULL, 'Distribuidora Chic Peru SRL', '01-1123456', 'ventas@chicperu.com', 'Jr. Carabaya 567, Lima', 'JURIDICO', TRUE),
(2, '20490123456', NULL, NULL, 'Inversiones Textil Sur SAC', '01-9912345', 'textilsur@gmail.com', 'Av. Paseo de la Republica 890, La Victoria', 'JURIDICO', TRUE),
(3, 'CE123456', 'John', 'Smith Carter', NULL, '987001122', 'john.smith@email.com', 'Av. Pardo 345, Miraflores', 'NATURAL', TRUE),
(3, 'CE234567', 'Sofia', 'Rodriguez Vargas', NULL, '976002233', 'sofia.rv@email.com', 'Jr. Berlin 678, San Isidro', 'NATURAL', TRUE),
(1, '71234560', 'Brenda', 'Quispe Lazo', NULL, '965003344', 'brenda.ql@gmail.com', 'Av. Los Heroes 234, SJM', 'NATURAL', TRUE),
(1, '81234560', 'Oscar', 'Tapia Rivas', NULL, '954004455', 'oscar.tr@gmail.com', 'Jr. Independencia 567, Pueblo Libre', 'NATURAL', TRUE),
(1, '91234560', 'Wendy', 'Huamani Solis', NULL, '943005566', 'wendy.hs@hotmail.com', 'Av. Colonial 890, Callao', 'NATURAL', TRUE);


-- PRODUCTOS (60)
INSERT INTO producto (codigo, nombre, descripcion, id_categoria, id_proveedor, precio_compra, precio_venta, stock_actual, stock_minimo, stock_maximo, unidad_medida, activo) VALUES
-- Polos y Camisetas (cat 1)
('POL-001', 'Polo Basico Hombre Blanco', 'Polo de algodón 100%, cuello redondo, talla S-XL', 1, 1, 15.00, 35.00, 80, 10, 150, 'UND', TRUE),
('POL-002', 'Polo Basico Mujer Negro', 'Polo de algodón slim fit para mujer, talla XS-L', 1, 1, 14.00, 32.00, 75, 10, 150, 'UND', TRUE),
('POL-003', 'Polo Estampado Urbano', 'Polo con estampado de diseño urbano, varios colores', 1, 2, 18.00, 45.00, 60, 8, 120, 'UND', TRUE),
('POL-004', 'Camiseta Oversize Unisex', 'Camiseta oversize de algodón, colores pastel', 1, 2, 22.00, 55.00, 50, 8, 100, 'UND', TRUE),
('POL-005', 'Polo Cuello V Hombre', 'Polo cuello V algodón pima, colores lisos', 1, 6, 16.00, 38.00, 65, 10, 120, 'UND', TRUE),
('CAM-001', 'Camisa Social Hombre Celeste', 'Camisa manga larga de vestir, 100% algodón', 10, 6, 35.00, 85.00, 40, 5, 80, 'UND', TRUE),
('CAM-002', 'Camisa Cuadros Casual', 'Camisa manga larga cuadros escoceses', 10, 6, 32.00, 79.00, 35, 5, 80, 'UND', TRUE),
-- Pantalones (cat 2)
('PAN-001', 'Jean Slim Fit Hombre Azul', 'Jean de corte slim fit, lavado clásico azul', 2, 3, 40.00, 95.00, 55, 8, 100, 'UND', TRUE),
('PAN-002', 'Jean Skinny Mujer Negro', 'Jean skinny tiro alto para mujer, negro', 2, 3, 38.00, 89.00, 60, 8, 100, 'UND', TRUE),
('PAN-003', 'Pantalon Jogger Gris', 'Pantalon jogger de algodón, varios colores', 2, 4, 28.00, 65.00, 70, 10, 120, 'UND', TRUE),
('PAN-004', 'Pantalon Drill Beige', 'Pantalon de drill casual, ideal para oficina', 2, 4, 30.00, 72.00, 45, 5, 90, 'UND', TRUE),
('PAN-005', 'Jean Recto Mujer Azul', 'Jean recto clásico para mujer', 2, 3, 36.00, 85.00, 50, 8, 100, 'UND', TRUE),
('PAN-006', 'Short Jean Mujer', 'Short de jean para dama, varios colores', 2, 7, 22.00, 55.00, 40, 5, 80, 'UND', TRUE),
-- Vestidos y Faldas (cat 3)
('VES-001', 'Vestido Casual Floral', 'Vestido de tela floral, manga corta, talla S-XL', 3, 8, 35.00, 85.00, 30, 5, 60, 'UND', TRUE),
('VES-002', 'Vestido Coctel Negro', 'Vestido de gala negro, escote en V', 3, 8, 55.00, 130.00, 20, 3, 40, 'UND', TRUE),
('VES-003', 'Falda Plisada Midi', 'Falda plisada longitud media, varios colores', 3, 9, 28.00, 65.00, 35, 5, 70, 'UND', TRUE),
('VES-004', 'Vestido Casual Manga Larga', 'Vestido casual de punto, manga larga', 3, 8, 40.00, 95.00, 25, 3, 50, 'UND', TRUE),
-- Ropa Interior (cat 4)
('INT-001', 'Pack 3 Boxers Algodon Hombre', 'Pack de 3 boxers de algodón, tallas S-XL', 4, 5, 18.00, 42.00, 90, 15, 180, 'PAQ', TRUE),
('INT-002', 'Pack 3 Calzones Algodon Mujer', 'Pack de 3 calzones de algodón, tallas S-XL', 4, 5, 16.00, 38.00, 85, 15, 180, 'PAQ', TRUE),
('INT-003', 'Medias Pack 6 Pares', 'Pack 6 pares de medias de algodón', 4, 5, 12.00, 28.00, 100, 20, 200, 'PAQ', TRUE),
-- Casacas y Abrigos (cat 5)
('CAS-001', 'Casaca Jean Hombre', 'Casaca de jean clásica, color azul', 5, 11, 55.00, 130.00, 30, 5, 60, 'UND', TRUE),
('CAS-002', 'Casaca Polar Mujer', 'Casaca polar suave, varios colores', 5, 11, 45.00, 110.00, 35, 5, 70, 'UND', TRUE),
('CAS-003', 'Abrigo Largo Mujer', 'Abrigo de invierno tela importada', 5, 10, 75.00, 180.00, 15, 3, 30, 'UND', TRUE),
('CAS-004', 'Casaca Rompeviento Unisex', 'Casaca impermeable rompeviento, varios colores', 5, 10, 60.00, 145.00, 20, 3, 40, 'UND', TRUE),
-- Ropa Deportiva (cat 6)
('DEP-001', 'Short Deportivo Hombre', 'Short deportivo de licra, tallas S-XXL', 6, 7, 20.00, 48.00, 55, 8, 100, 'UND', TRUE),
('DEP-002', 'Licra Deportiva Mujer', 'Licra deportiva de compresión, varios colores', 6, 7, 25.00, 59.00, 50, 8, 100, 'UND', TRUE),
('DEP-003', 'Buzo Completo Unisex', 'Conjunto deportivo polo + pantalon', 6, 4, 50.00, 119.00, 40, 5, 80, 'JGO', TRUE),
('DEP-004', 'Polo Deportivo Dri-Fit', 'Polo deportivo tela transpirable', 6, 7, 22.00, 52.00, 60, 10, 120, 'UND', TRUE),
-- Calzado (cat 7)
('ZAP-001', 'Zapatilla Casual Hombre Blanca', 'Zapatilla urbana, suela de goma, talla 38-44', 7, 12, 65.00, 150.00, 30, 5, 60, 'PAR', TRUE),
('ZAP-002', 'Zapatilla Casual Mujer Rosa', 'Zapatilla urbana para dama, talla 35-40', 7, 12, 60.00, 139.00, 28, 5, 60, 'PAR', TRUE),
('ZAP-003', 'Sandalia Dama Verano', 'Sandalia de cuero sintético para verano', 7, 12, 30.00, 72.00, 35, 5, 70, 'PAR', TRUE),
('ZAP-004', 'Bota Cuero Hombre', 'Bota de cuero genuino, punta redonda', 7, 12, 120.00, 280.00, 12, 3, 25, 'PAR', TRUE),
-- Accesorios (cat 8)
('ACC-001', 'Cinturon Cuero Hombre Negro', 'Cinturon de cuero genuino, tallas 90-110cm', 8, 9, 18.00, 45.00, 45, 8, 90, 'UND', TRUE),
('ACC-002', 'Gorra Snapback Unisex', 'Gorra regulable, varios diseños', 8, 9, 12.00, 30.00, 60, 10, 120, 'UND', TRUE),
('ACC-003', 'Bufanda Tejida Mujer', 'Bufanda de lana, colores variados', 8, 11, 14.00, 35.00, 40, 5, 80, 'UND', TRUE),
('ACC-004', 'Cartera Mujer Cuero', 'Cartera de cuero sintético, varios colores', 8, 9, 35.00, 85.00, 25, 5, 50, 'UND', TRUE),
-- Ropa de Niños (cat 9)
('NIN-001', 'Conjunto Bebe 0-6 Meses', 'Set de bodys y pelele para bebe', 9, 1, 25.00, 58.00, 30, 5, 60, 'JGO', TRUE),
('NIN-002', 'Polo Niño Estampado 4-8 años', 'Polo de algodón con estampado infantil', 9, 2, 12.00, 28.00, 50, 8, 100, 'UND', TRUE),
('NIN-003', 'Jean Niña 6-12 años', 'Jean slim para niña, varios colores', 9, 3, 22.00, 52.00, 35, 5, 70, 'UND', TRUE),
('NIN-004', 'Pijama Niño 4-10 años', 'Pijama de algodón, estampados divertidos', 9, 5, 20.00, 48.00, 40, 8, 80, 'JGO', TRUE),
-- Ropa Formal (cat 10)
('FOR-001', 'Blazer Hombre Gris', 'Blazer slim fit para hombre, tela importada', 10, 6, 120.00, 280.00, 15, 3, 30, 'UND', TRUE),
('FOR-002', 'Pantalon Vestir Hombre Negro', 'Pantalon de vestir slim, tela elastica', 10, 4, 45.00, 105.00, 20, 3, 40, 'UND', TRUE),
('FOR-003', 'Vestido Formal Mujer Azul', 'Vestido de gala para ocasiones especiales', 10, 8, 80.00, 190.00, 12, 2, 25, 'UND', TRUE),
('FOR-004', 'Traje Completo Hombre', 'Traje de dos piezas saco + pantalon', 10, 6, 200.00, 480.00, 8, 2, 15, 'JGO', TRUE),
-- Adicionales variados
('POL-006', 'Polo Henley Hombre', 'Polo con botones en cuello, manga corta', 1, 1, 19.00, 45.00, 55, 8, 110, 'UND', TRUE),
('PAN-007', 'Pantalon Cargo Hombre', 'Pantalon cargo con bolsillos laterales', 2, 4, 35.00, 82.00, 38, 5, 75, 'UND', TRUE),
('DEP-005', 'Top Deportivo Mujer', 'Top deportivo con soporte, varios colores', 6, 7, 18.00, 42.00, 48, 8, 95, 'UND', TRUE),
('CAS-005', 'Chaleco Acolchado Unisex', 'Chaleco acolchado sin mangas, ligero y abrigador', 5, 10, 48.00, 115.00, 22, 3, 45, 'UND', TRUE),
('ACC-005', 'Gorro Tejido Invierno', 'Gorro de lana para invierno, varios colores', 8, 11, 10.00, 25.00, 70, 10, 140, 'UND', TRUE),
('ZAP-005', 'Pantufla Polar Unisex', 'Pantufla de polar suave, tallas 36-44', 7, 12, 18.00, 42.00, 45, 8, 90, 'PAR', TRUE),
('NIN-005', 'Chompa Niño 2-6 años', 'Chompa de lana suave para niños', 9, 11, 22.00, 52.00, 30, 5, 60, 'UND', TRUE),
('INT-004', 'Sostén Deportivo Mujer', 'Sostén de alto impacto, tallas S-XL', 4, 5, 20.00, 48.00, 55, 8, 110, 'UND', TRUE),
('POL-007', 'Polo Crop Top Mujer', 'Polo corto para mujer, tendencia actual', 1, 2, 15.00, 36.00, 58, 8, 115, 'UND', TRUE),
('CAM-003', 'Camisa Lino Hombre Blanca', 'Camisa de lino 100% para verano', 10, 6, 38.00, 92.00, 28, 5, 55, 'UND', TRUE),
('VES-005', 'Jumpsuit Casual Mujer', 'Jumpsuit de tela suave, varios colores', 3, 8, 42.00, 99.00, 22, 3, 45, 'UND', TRUE);



-- COMPRAS (35)

INSERT INTO compra (id_proveedor, id_usuario, id_almacen, nro_comprobante, fecha_compra, subtotal, igv, total, estado, observaciones) VALUES
(1, 4, 1, 'F001-00001', '2024-01-10 09:00:00', 1200.00, 216.00, 1416.00, 'CONFIRMADA', 'Primera compra del año'),
(2, 4, 1, 'F002-00001', '2024-01-15 10:30:00', 950.00, 171.00, 1121.00, 'CONFIRMADA', NULL),
(3, 8, 4, 'F003-00001', '2024-01-20 11:00:00', 1800.00, 324.00, 2124.00, 'CONFIRMADA', 'Restock jeans'),
(4, 4, 1, 'F004-00001', '2024-02-05 09:30:00', 700.00, 126.00, 826.00, 'CONFIRMADA', NULL),
(5, 8, 4, 'F005-00001', '2024-02-10 10:00:00', 1100.00, 198.00, 1298.00, 'CONFIRMADA', 'Importacion casacas'),
(6, 4, 1, 'F006-00001', '2024-02-20 11:30:00', 850.00, 153.00, 1003.00, 'CONFIRMADA', NULL),
(7, 8, 4, 'F007-00001', '2024-03-01 09:00:00', 1350.00, 243.00, 1593.00, 'CONFIRMADA', 'Ropa deportiva temporada'),
(8, 4, 1, 'F008-00001', '2024-03-10 10:00:00', 600.00, 108.00, 708.00, 'CONFIRMADA', NULL),
(9, 8, 4, 'F009-00001', '2024-03-15 11:00:00', 900.00, 162.00, 1062.00, 'CONFIRMADA', NULL),
(10, 4, 1, 'F010-00001', '2024-03-25 09:30:00', 2000.00, 360.00, 2360.00, 'CONFIRMADA', 'Coleccion formal nueva'),
(1, 4, 2, 'F001-00002', '2024-04-05 10:00:00', 800.00, 144.00, 944.00, 'CONFIRMADA', NULL),
(2, 8, 3, 'F002-00002', '2024-04-12 11:30:00', 750.00, 135.00, 885.00, 'CONFIRMADA', NULL),
(3, 4, 1, 'F003-00002', '2024-04-20 09:00:00', 1400.00, 252.00, 1652.00, 'CONFIRMADA', 'Restock pantalones'),
(11, 8, 4, 'F011-00001', '2024-05-02 10:30:00', 650.00, 117.00, 767.00, 'CONFIRMADA', NULL),
(12, 4, 1, 'F012-00001', '2024-05-10 11:00:00', 1900.00, 342.00, 2242.00, 'CONFIRMADA', 'Calzado temporada invierno'),
(5, 8, 4, 'F005-00002', '2024-05-18 09:30:00', 500.00, 90.00, 590.00, 'CONFIRMADA', NULL),
(7, 4, 1, 'F007-00002', '2024-06-01 10:00:00', 980.00, 176.40, 1156.40, 'CONFIRMADA', NULL),
(1, 8, 3, 'F001-00003', '2024-06-10 11:00:00', 720.00, 129.60, 849.60, 'CONFIRMADA', NULL),
(6, 4, 1, 'F006-00002', '2024-06-20 09:00:00', 1050.00, 189.00, 1239.00, 'CONFIRMADA', 'Camisas y ropa formal'),
(10, 8, 4, 'F010-00002', '2024-07-05 10:30:00', 1500.00, 270.00, 1770.00, 'CONFIRMADA', NULL),
(3, 4, 1, 'F003-00003', '2024-07-15 11:00:00', 1250.00, 225.00, 1475.00, 'CONFIRMADA', NULL),
(8, 8, 4, 'F008-00002', '2024-07-22 09:30:00', 780.00, 140.40, 920.40, 'CONFIRMADA', NULL),
(2, 4, 2, 'F002-00003', '2024-08-03 10:00:00', 830.00, 149.40, 979.40, 'CONFIRMADA', NULL),
(11, 8, 1, 'F011-00002', '2024-08-12 11:00:00', 560.00, 100.80, 660.80, 'CONFIRMADA', NULL),
(4, 4, 4, 'F004-00002', '2024-08-20 09:00:00', 920.00, 165.60, 1085.60, 'CONFIRMADA', NULL),
(9, 8, 1, 'F009-00002', '2024-09-02 10:30:00', 670.00, 120.60, 790.60, 'CONFIRMADA', NULL),
(12, 4, 3, 'F012-00002', '2024-09-10 11:00:00', 1450.00, 261.00, 1711.00, 'CONFIRMADA', NULL),
(1, 8, 4, 'F001-00004', '2024-09-20 09:30:00', 890.00, 160.20, 1050.20, 'CONFIRMADA', NULL),
(5, 4, 1, 'F005-00003', '2024-10-05 10:00:00', 750.00, 135.00, 885.00, 'CONFIRMADA', NULL),
(7, 8, 4, 'F007-00003', '2024-10-15 11:00:00', 1100.00, 198.00, 1298.00, 'CONFIRMADA', NULL),
(6, 4, 2, 'F006-00003', '2024-10-25 09:00:00', 680.00, 122.40, 802.40, 'CONFIRMADA', NULL),
(3, 8, 1, 'F003-00004', '2024-11-08 10:30:00', 1300.00, 234.00, 1534.00, 'CONFIRMADA', NULL),
(10, 4, 4, 'F010-00003', '2024-11-18 11:00:00', 1700.00, 306.00, 2006.00, 'CONFIRMADA', 'Coleccion fin de año'),
(2, 8, 1, 'F002-00004', '2024-12-02 09:30:00', 920.00, 165.60, 1085.60, 'CONFIRMADA', NULL),
(1, 4, 3, 'F001-00005', '2024-12-15 10:00:00', 1050.00, 189.00, 1239.00, 'PENDIENTE', 'Compra navideña pendiente de confirmar');




-- DETALLE_COMPRA (100)
INSERT INTO detalle_compra (id_compra, id_producto, cantidad, precio_unitario) VALUES
-- Compra 1
(1, 1, 30, 15.00), (1, 2, 25, 14.00), (1, 5, 20, 16.00),
-- Compra 2
(2, 3, 20, 18.00), (2, 4, 15, 22.00), (2, 46, 15, 19.00),
-- Compra 3
(3, 8, 20, 40.00), (3, 9, 18, 38.00), (3, 11, 12, 30.00),
-- Compra 4
(4, 18, 20, 18.00), (4, 19, 20, 16.00), (4, 20, 15, 12.00),
-- Compra 5
(5, 21, 10, 55.00), (5, 22, 10, 45.00), (5, 24, 5, 60.00),
-- Compra 6
(6, 6, 10, 35.00), (6, 7, 12, 32.00), (6, 52, 8, 38.00),
-- Compra 7
(7, 25, 20, 20.00), (7, 26, 18, 25.00), (7, 28, 22, 22.00),
-- Compra 8
(8, 14, 8, 35.00), (8, 15, 5, 55.00), (8, 16, 10, 28.00),
-- Compra 9
(9, 33, 15, 18.00), (9, 34, 12, 12.00), (9, 35, 8, 14.00),
-- Compra 10
(10, 41, 5, 120.00), (10, 42, 8, 45.00), (10, 44, 3, 200.00),
-- Compra 11
(11, 1, 20, 15.00), (11, 2, 15, 14.00), (11, 3, 12, 18.00),
-- Compra 12
(12, 47, 15, 18.00), (12, 48, 12, 20.00), (12, 49, 10, 10.00),
-- Compra 13
(13, 8, 18, 40.00), (13, 10, 20, 28.00), (13, 12, 12, 22.00),
-- Compra 14
(14, 36, 8, 22.00), (14, 50, 8, 22.00), (14, 53, 10, 10.00),
-- Compra 15
(15, 29, 10, 65.00), (15, 30, 10, 60.00), (15, 31, 10, 30.00),
-- Compra 16
(16, 18, 15, 18.00), (16, 19, 15, 16.00),
-- Compra 17
(17, 25, 18, 20.00), (17, 27, 10, 50.00), (17, 28, 22, 22.00),
-- Compra 18
(18, 1, 18, 15.00), (18, 5, 15, 16.00), (18, 46, 12, 19.00),
-- Compra 19
(19, 6, 12, 35.00), (19, 7, 10, 32.00), (19, 43, 5, 80.00),
-- Compra 20
(20, 41, 4, 120.00), (20, 42, 6, 45.00), (20, 45, 5, 48.00),
-- Compra 21
(21, 9, 15, 38.00), (21, 11, 12, 30.00), (21, 12, 10, 22.00),
-- Compra 22
(22, 17, 8, 40.00), (22, 54, 5, 42.00),
-- Compra 23
(23, 3, 15, 18.00), (23, 4, 10, 22.00), (23, 47, 12, 18.00),
-- Compra 24
(24, 36, 6, 22.00), (24, 37, 8, 14.00), (24, 38, 5, 35.00),
-- Compra 25
(25, 10, 15, 28.00), (25, 13, 8, 28.00),
-- Compra 26
(26, 33, 12, 18.00), (26, 34, 10, 12.00),
-- Compra 27
(27, 29, 8, 65.00), (27, 30, 8, 60.00), (27, 32, 3, 120.00),
-- Compra 28
(28, 1, 22, 15.00), (28, 2, 18, 14.00), (28, 5, 15, 16.00),
-- Compra 29
(29, 18, 12, 18.00), (29, 19, 12, 16.00), (29, 55, 10, 20.00),
-- Compra 30
(30, 25, 16, 20.00), (30, 26, 14, 25.00), (30, 28, 18, 22.00),
-- Compra 31
(31, 6, 10, 35.00), (31, 7, 8, 32.00),
-- Compra 32
(32, 8, 15, 40.00), (32, 9, 12, 38.00), (32, 11, 8, 30.00),
-- Compra 33
(33, 41, 5, 120.00), (33, 42, 8, 45.00), (33, 44, 2, 200.00),
-- Compra 34
(34, 3, 18, 18.00), (34, 4, 12, 22.00), (34, 47, 14, 19.00),
-- Compra 35
(35, 1, 20, 15.00), (35, 2, 18, 14.00), (35, 5, 16, 16.00);



-- VENTAS (100)
INSERT INTO venta (id_cliente, id_usuario, id_almacen, id_tipo_pago, nro_comprobante, tipo_comprobante, fecha_venta, subtotal, descuento, igv, total, estado, observacion) VALUES
(1, 2, 2, 1, 'B001-00001', 'BOLETA', '2024-01-12 10:15:00', 67.00, 0, 12.06, 79.06, 'COMPLETADA', NULL),
(2, 2, 2, 4, 'B001-00002', 'BOLETA', '2024-01-13 11:30:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(3, 5, 2, 1, 'B001-00003', 'BOLETA', '2024-01-14 12:00:00', 165.00, 10.00, 27.90, 182.90, 'COMPLETADA', 'Descuento cliente frecuente'),
(31, 3, 3, 2, 'F001-00001', 'FACTURA', '2024-01-15 09:30:00', 480.00, 0, 86.40, 566.40, 'COMPLETADA', 'Venta corporativa'),
(4, 2, 2, 1, 'B001-00004', 'BOLETA', '2024-01-16 14:00:00', 89.00, 0, 16.02, 105.02, 'COMPLETADA', NULL),
(5, 5, 2, 4, 'B001-00005', 'BOLETA', '2024-01-18 15:30:00', 130.00, 5.00, 22.50, 147.50, 'COMPLETADA', NULL),
(6, 2, 2, 1, 'B001-00006', 'BOLETA', '2024-01-20 10:00:00', 42.00, 0, 7.56, 49.56, 'COMPLETADA', NULL),
(7, 3, 3, 2, 'B001-00007', 'BOLETA', '2024-01-22 11:00:00', 58.00, 0, 10.44, 68.44, 'COMPLETADA', NULL),
(8, 5, 2, 1, 'B001-00008', 'BOLETA', '2024-01-25 12:30:00', 119.00, 0, 21.42, 140.42, 'COMPLETADA', NULL),
(32, 2, 2, 5, 'F001-00002', 'FACTURA', '2024-01-28 09:00:00', 750.00, 50.00, 126.00, 826.00, 'COMPLETADA', 'Cliente mayorista'),
(9, 3, 3, 4, 'B001-00009', 'BOLETA', '2024-02-01 10:30:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(10, 5, 2, 1, 'B001-00010', 'BOLETA', '2024-02-03 11:00:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(1, 2, 2, 4, 'B001-00011', 'BOLETA', '2024-02-05 14:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(11, 3, 3, 1, 'B001-00012', 'BOLETA', '2024-02-07 15:30:00', 180.00, 20.00, 28.80, 188.80, 'COMPLETADA', NULL),
(33, 9, 3, 2, 'F001-00003', 'FACTURA', '2024-02-10 09:00:00', 560.00, 0, 100.80, 660.80, 'COMPLETADA', NULL),
(12, 2, 2, 1, 'B001-00013', 'BOLETA', '2024-02-12 10:00:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(13, 5, 2, 4, 'B001-00014', 'BOLETA', '2024-02-14 11:30:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(14, 3, 3, 2, 'B001-00015', 'BOLETA', '2024-02-16 12:00:00', 130.00, 10.00, 21.60, 141.60, 'COMPLETADA', NULL),
(15, 9, 3, 1, 'B001-00016', 'BOLETA', '2024-02-18 14:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(34, 2, 2, 5, 'F001-00004', 'FACTURA', '2024-02-22 09:30:00', 890.00, 80.00, 146.88, 956.88, 'COMPLETADA', 'Pedido corporativo grande'),
(16, 5, 2, 4, 'B001-00017', 'BOLETA', '2024-03-02 10:00:00', 45.00, 0, 8.10, 53.10, 'COMPLETADA', NULL),
(17, 3, 3, 1, 'B001-00018', 'BOLETA', '2024-03-04 11:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(18, 2, 2, 2, 'B001-00019', 'BOLETA', '2024-03-06 12:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(19, 9, 3, 1, 'B001-00020', 'BOLETA', '2024-03-08 14:00:00', 119.00, 0, 21.42, 140.42, 'COMPLETADA', NULL),
(35, 5, 2, 2, 'F001-00005', 'FACTURA', '2024-03-12 09:00:00', 680.00, 0, 122.40, 802.40, 'COMPLETADA', NULL),
(20, 2, 2, 4, 'B001-00021', 'BOLETA', '2024-03-15 10:30:00', 42.00, 0, 7.56, 49.56, 'COMPLETADA', NULL),
(21, 3, 3, 1, 'B001-00022', 'BOLETA', '2024-03-18 11:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(22, 5, 2, 4, 'B001-00023', 'BOLETA', '2024-03-20 12:00:00', 130.00, 5.00, 22.50, 147.50, 'COMPLETADA', NULL),
(1, 9, 3, 2, 'B001-00024', 'BOLETA', '2024-03-22 14:30:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(23, 2, 2, 1, 'B001-00025', 'BOLETA', '2024-03-25 15:00:00', 280.00, 0, 50.40, 330.40, 'COMPLETADA', 'Compra de botas'),
(24, 5, 2, 4, 'B001-00026', 'BOLETA', '2024-04-02 10:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(25, 3, 3, 1, 'B001-00027', 'BOLETA', '2024-04-04 11:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(31, 9, 2, 2, 'F001-00006', 'FACTURA', '2024-04-08 09:00:00', 420.00, 30.00, 70.20, 460.20, 'COMPLETADA', NULL),
(26, 2, 2, 1, 'B001-00028', 'BOLETA', '2024-04-10 10:30:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(27, 5, 3, 4, 'B001-00029', 'BOLETA', '2024-04-12 11:00:00', 110.00, 0, 19.80, 129.80, 'COMPLETADA', NULL),
(28, 3, 2, 2, 'B001-00030', 'BOLETA', '2024-04-15 12:30:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(29, 9, 3, 1, 'B001-00031', 'BOLETA', '2024-04-18 14:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(30, 2, 2, 4, 'B001-00032', 'BOLETA', '2024-04-20 15:30:00', 52.00, 0, 9.36, 61.36, 'COMPLETADA', NULL),
(32, 5, 2, 5, 'F001-00007', 'FACTURA', '2024-04-25 09:30:00', 960.00, 100.00, 154.80, 1014.80, 'COMPLETADA', NULL),
(1, 3, 3, 1, 'B001-00033', 'BOLETA', '2024-05-03 10:00:00', 145.00, 0, 26.10, 171.10, 'COMPLETADA', NULL),
(2, 9, 2, 4, 'B001-00034', 'BOLETA', '2024-05-06 11:30:00', 89.00, 0, 16.02, 105.02, 'COMPLETADA', NULL),
(3, 2, 3, 2, 'B001-00035', 'BOLETA', '2024-05-08 12:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(4, 5, 2, 1, 'B001-00036', 'BOLETA', '2024-05-10 14:00:00', 42.00, 0, 7.56, 49.56, 'COMPLETADA', NULL),
(33, 3, 3, 2, 'F001-00008', 'FACTURA', '2024-05-15 09:00:00', 580.00, 0, 104.40, 684.40, 'COMPLETADA', NULL),
(5, 9, 2, 4, 'B001-00037', 'BOLETA', '2024-05-18 10:30:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(6, 2, 3, 1, 'B001-00038', 'BOLETA', '2024-05-20 11:00:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(7, 5, 2, 2, 'B001-00039', 'BOLETA', '2024-05-22 12:30:00', 130.00, 10.00, 21.60, 141.60, 'COMPLETADA', NULL),
(8, 3, 3, 4, 'B001-00040', 'BOLETA', '2024-05-25 14:00:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(9, 9, 2, 1, 'B001-00041', 'BOLETA', '2024-06-02 10:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(10, 2, 3, 4, 'B001-00042', 'BOLETA', '2024-06-05 11:00:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(34, 5, 2, 2, 'F001-00009', 'FACTURA', '2024-06-10 09:30:00', 720.00, 50.00, 120.60, 790.60, 'COMPLETADA', NULL),
(11, 3, 3, 1, 'B001-00043', 'BOLETA', '2024-06-12 10:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(12, 9, 2, 4, 'B001-00044', 'BOLETA', '2024-06-15 11:30:00', 119.00, 0, 21.42, 140.42, 'COMPLETADA', NULL),
(13, 2, 3, 2, 'B001-00045', 'BOLETA', '2024-06-18 12:00:00', 42.00, 0, 7.56, 49.56, 'COMPLETADA', NULL),
(35, 5, 2, 5, 'F001-00010', 'FACTURA', '2024-06-22 09:00:00', 840.00, 70.00, 139.80, 909.80, 'COMPLETADA', NULL),
(14, 3, 3, 1, 'B001-00046', 'BOLETA', '2024-07-03 10:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(15, 9, 2, 4, 'B001-00047', 'BOLETA', '2024-07-06 11:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(16, 2, 3, 2, 'B001-00048', 'BOLETA', '2024-07-08 12:30:00', 180.00, 15.00, 29.70, 194.70, 'COMPLETADA', NULL),
(31, 5, 2, 1, 'F001-00011', 'FACTURA', '2024-07-12 09:00:00', 520.00, 0, 93.60, 613.60, 'COMPLETADA', NULL),
(17, 3, 3, 4, 'B001-00049', 'BOLETA', '2024-07-15 10:00:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(18, 9, 2, 1, 'B001-00050', 'BOLETA', '2024-07-18 11:30:00', 130.00, 0, 23.40, 153.40, 'COMPLETADA', NULL),
(19, 2, 3, 2, 'B001-00051', 'BOLETA', '2024-07-20 12:00:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(20, 5, 2, 4, 'B001-00052', 'BOLETA', '2024-07-22 14:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(32, 3, 3, 5, 'F001-00012', 'FACTURA', '2024-07-25 09:30:00', 1100.00, 100.00, 180.00, 1180.00, 'COMPLETADA', NULL),
(21, 9, 2, 1, 'B001-00053', 'BOLETA', '2024-08-02 10:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(22, 2, 3, 4, 'B001-00054', 'BOLETA', '2024-08-05 11:00:00', 280.00, 0, 50.40, 330.40, 'COMPLETADA', 'Compra zapatillas'),
(23, 5, 2, 2, 'B001-00055', 'BOLETA', '2024-08-08 12:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(24, 3, 3, 1, 'B001-00056', 'BOLETA', '2024-08-10 14:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(33, 9, 2, 2, 'F001-00013', 'FACTURA', '2024-08-15 09:00:00', 640.00, 40.00, 108.00, 708.00, 'COMPLETADA', NULL),
(25, 2, 3, 4, 'B001-00057', 'BOLETA', '2024-08-18 10:30:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(26, 5, 2, 1, 'B001-00058', 'BOLETA', '2024-08-20 11:00:00', 119.00, 0, 21.42, 140.42, 'COMPLETADA', NULL),
(27, 3, 3, 2, 'B001-00059', 'BOLETA', '2024-08-22 12:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(1, 9, 2, 4, 'B001-00060', 'BOLETA', '2024-08-25 14:30:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(28, 2, 3, 1, 'B001-00061', 'BOLETA', '2024-09-03 10:00:00', 130.00, 10.00, 21.60, 141.60, 'COMPLETADA', NULL),
(29, 5, 2, 4, 'B001-00062', 'BOLETA', '2024-09-06 11:30:00', 42.00, 0, 7.56, 49.56, 'COMPLETADA', NULL),
(30, 3, 3, 2, 'B001-00063', 'BOLETA', '2024-09-08 12:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(34, 9, 2, 5, 'F001-00014', 'FACTURA', '2024-09-12 09:00:00', 780.00, 60.00, 129.60, 849.60, 'COMPLETADA', NULL),
(2, 2, 3, 1, 'B001-00064', 'BOLETA', '2024-09-15 10:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(3, 5, 2, 4, 'B001-00065', 'BOLETA', '2024-09-18 11:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(4, 3, 3, 2, 'B001-00066', 'BOLETA', '2024-09-20 12:30:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(35, 9, 2, 2, 'F001-00015', 'FACTURA', '2024-09-25 09:30:00', 560.00, 0, 100.80, 660.80, 'COMPLETADA', NULL),
(5, 2, 3, 1, 'B001-00067', 'BOLETA', '2024-10-03 10:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(6, 5, 2, 4, 'B001-00068', 'BOLETA', '2024-10-06 11:00:00', 130.00, 0, 23.40, 153.40, 'COMPLETADA', NULL),
(7, 3, 3, 1, 'B001-00069', 'BOLETA', '2024-10-08 12:00:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(8, 9, 2, 2, 'B001-00070', 'BOLETA', '2024-10-10 14:00:00', 42.00, 0, 7.56, 49.56, 'COMPLETADA', NULL),
(31, 2, 3, 2, 'F001-00016', 'FACTURA', '2024-10-15 09:00:00', 480.00, 0, 86.40, 566.40, 'COMPLETADA', NULL),
(9, 5, 2, 4, 'B001-00071', 'BOLETA', '2024-10-18 10:30:00', 119.00, 0, 21.42, 140.42, 'COMPLETADA', NULL),
(10, 3, 3, 1, 'B001-00072', 'BOLETA', '2024-10-20 11:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(11, 9, 2, 4, 'B001-00073', 'BOLETA', '2024-10-22 12:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(32, 2, 3, 5, 'F001-00017', 'FACTURA', '2024-10-28 09:00:00', 1200.00, 120.00, 194.40, 1274.40, 'COMPLETADA', 'Pedido grande fin de mes'),
(12, 5, 2, 1, 'B001-00074', 'BOLETA', '2024-11-04 10:00:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(13, 3, 3, 4, 'B001-00075', 'BOLETA', '2024-11-06 11:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(14, 9, 2, 2, 'B001-00076', 'BOLETA', '2024-11-08 12:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(33, 2, 3, 2, 'F001-00018', 'FACTURA', '2024-11-12 09:30:00', 650.00, 50.00, 108.00, 708.00, 'COMPLETADA', NULL),
(15, 5, 2, 1, 'B001-00077', 'BOLETA', '2024-11-15 10:30:00', 130.00, 0, 23.40, 153.40, 'COMPLETADA', NULL),
(16, 3, 3, 4, 'B001-00078', 'BOLETA', '2024-11-18 11:00:00', 280.00, 0, 50.40, 330.40, 'COMPLETADA', 'Abrigo largo temporada invierno'),
(17, 9, 2, 1, 'B001-00079', 'BOLETA', '2024-11-20 12:30:00', 72.00, 0, 12.96, 84.96, 'COMPLETADA', NULL),
(34, 2, 3, 2, 'F001-00019', 'FACTURA', '2024-11-25 09:00:00', 920.00, 80.00, 151.20, 991.20, 'COMPLETADA', NULL),
(18, 5, 2, 4, 'B001-00080', 'BOLETA', '2024-12-02 10:00:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(19, 3, 3, 1, 'T001-00001', 'TICKET', '2024-12-03 11:00:00', 35.00, 0, 0, 35.00, 'COMPLETADA', 'Venta rapida sin IGV'),
(20, 9, 2, 4, 'B001-00081', 'BOLETA', '2024-12-05 12:00:00', 119.00, 5.00, 20.52, 134.52, 'COMPLETADA', NULL),
(35, 2, 3, 5, 'F001-00020', 'FACTURA', '2024-12-10 09:00:00', 1050.00, 100.00, 171.00, 1121.00, 'COMPLETADA', NULL),
(1, 5, 2, 1, 'B001-00082', 'BOLETA', '2024-12-12 10:30:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL),
(2, 3, 3, 4, 'B001-00083', 'BOLETA', '2024-12-14 11:00:00', 48.00, 0, 8.64, 56.64, 'COMPLETADA', NULL),
(3, 9, 2, 2, 'B001-00084', 'BOLETA', '2024-12-16 12:30:00', 480.00, 0, 86.40, 566.40, 'COMPLETADA', 'Compra traje completo'),
(31, 2, 3, 2, 'F001-00021', 'FACTURA', '2024-12-18 09:30:00', 650.00, 50.00, 108.00, 708.00, 'COMPLETADA', NULL),
(4, 5, 2, 1, 'B001-00085', 'BOLETA', '2024-12-20 10:00:00', 55.00, 0, 9.90, 64.90, 'COMPLETADA', NULL),
(5, 3, 3, 4, 'B001-00086', 'BOLETA', '2024-12-22 11:00:00', 95.00, 0, 17.10, 112.10, 'COMPLETADA', NULL),
(6, 9, 2, 1, 'B001-00087', 'BOLETA', '2024-12-23 12:00:00', 130.00, 10.00, 21.60, 141.60, 'COMPLETADA', NULL),
(7, 2, 3, 2, 'B001-00088', 'BOLETA', '2024-12-24 14:00:00', 42.00, 0, 7.56, 49.56, 'ANULADA', 'Cliente cancelo pedido'),
(32, 5, 2, 5, 'F001-00022', 'FACTURA', '2024-12-26 09:00:00', 1400.00, 150.00, 225.00, 1475.00, 'COMPLETADA', 'Venta navideña corporativa'),
(8, 3, 3, 4, 'B001-00089', 'BOLETA', '2024-12-27 10:30:00', 65.00, 0, 11.70, 76.70, 'COMPLETADA', NULL),
(9, 9, 2, 1, 'B001-00090', 'BOLETA', '2024-12-28 11:00:00', 85.00, 0, 15.30, 100.30, 'COMPLETADA', NULL);





-- DETALLE_VENTA (240)
INSERT INTO detalle_venta (id_venta, id_producto, cantidad, precio_unitario, descuento) VALUES
-- Venta 1
(1, 1, 1, 35.00, 0), (1, 19, 1, 38.00, 0),
-- Venta 2
(2, 8, 1, 95.00, 0),
-- Venta 3
(3, 9, 1, 89.00, 10), (3, 28, 1, 48.00, 0), (3, 34, 1, 30.00, 0),
-- Venta 4
(4, 44, 1, 480.00, 0),
-- Venta 5
(5, 6, 1, 85.00, 0),
-- Venta 6
(6, 14, 1, 85.00, 5), (6, 34, 1, 30.00, 0), (6, 20, 1, 28.00, 0),
-- Venta 7
(7, 18, 1, 42.00, 0),
-- Venta 8
(8, 10, 1, 65.00, 0),
-- Venta 9
(9, 27, 1, 119.00, 0),
-- Venta 10
(10, 41, 1, 280.00, 50), (10, 42, 2, 105.00, 0), (10, 7, 2, 79.00, 0),
-- Venta 11
(11, 2, 1, 32.00, 0), (11, 3, 1, 45.00, 0),
-- Venta 12
(12, 5, 1, 38.00, 0), (12, 33, 1, 45.00, 0),
-- Venta 13
(13, 8, 1, 95.00, 0),
-- Venta 14
(14, 17, 1, 95.00, 20), (14, 20, 3, 28.00, 0),
-- Venta 15
(15, 43, 3, 85.00, 0), (15, 42, 3, 105.00, 0),
-- Venta 16
(16, 18, 1, 42.00, 0), (16, 34, 1, 30.00, 0),
-- Venta 17
(17, 31, 1, 72.00, 0),
-- Venta 18
(18, 9, 1, 89.00, 10), (18, 5, 1, 38.00, 0),
-- Venta 19
(19, 1, 1, 35.00, 0), (19, 10, 1, 65.00, 0),
-- Venta 20
(20, 44, 1, 480.00, 80), (20, 41, 1, 280.00, 0), (20, 6, 1, 85.00, 0),
-- Venta 21
(21, 26, 1, 59.00, 0),
-- Venta 22
(22, 8, 1, 95.00, 0),
-- Venta 23
(23, 3, 1, 45.00, 0), (23, 5, 1, 38.00, 0),
-- Venta 24
(24, 2, 1, 32.00, 0), (24, 19, 1, 38.00, 0),
-- Venta 25
(25, 32, 1, 280.00, 0),
-- Venta 26
(26, 8, 1, 95.00, 0),
-- Venta 27
(27, 5, 1, 38.00, 0), (27, 1, 1, 35.00, 0),
-- Venta 28
(28, 43, 1, 85.00, 30), (28, 17, 1, 95.00, 0), (28, 42, 2, 105.00, 0),
-- Venta 29
(29, 18, 1, 42.00, 0), (29, 34, 1, 30.00, 0),
-- Venta 30
(30, 27, 1, 119.00, 0),
-- Venta 31
(31, 33, 1, 45.00, 0), (31, 1, 1, 35.00, 0),
-- Venta 32
(32, 16, 1, 65.00, 0),
-- Venta 33
(33, 41, 1, 280.00, 0), (33, 42, 1, 105.00, 0), (33, 22, 1, 110.00, 0),
-- Venta 34
(34, 6, 1, 85.00, 0),
-- Venta 35
(35, 2, 1, 32.00, 0), (35, 5, 1, 38.00, 0),
-- Venta 36
(36, 18, 1, 42.00, 0),
-- Venta 37
(37, 43, 2, 85.00, 0), (37, 7, 1, 79.00, 0),
-- Venta 38
(38, 9, 1, 89.00, 10), (38, 20, 2, 28.00, 0),
-- Venta 39
(39, 10, 1, 65.00, 0), (39, 3, 1, 45.00, 5),
-- Venta 40
(40, 33, 1, 45.00, 0), (40, 19, 1, 38.00, 0),
-- Venta 41
(41, 1, 1, 35.00, 0), (41, 34, 1, 30.00, 0), (41, 5, 1, 38.00, 0),
-- Venta 42
(42, 31, 1, 72.00, 0),
-- Venta 43
(43, 41, 1, 280.00, 50), (43, 22, 1, 110.00, 0), (43, 34, 1, 35.00, 0),
-- Venta 44
(44, 6, 1, 85.00, 0),
-- Venta 45
(45, 2, 1, 32.00, 0), (45, 19, 1, 38.00, 0),
-- Venta 46
(46, 18, 1, 42.00, 0),
-- Venta 47
(47, 43, 2, 85.00, 0), (47, 7, 1, 79.00, 0),
-- Venta 48
(48, 14, 1, 85.00, 15), (48, 3, 1, 45.00, 0), (48, 10, 1, 65.00, 0),
-- Venta 49
(49, 43, 2, 85.00, 0), (49, 42, 2, 105.00, 0), (49, 7, 1, 79.00, 0),
-- Venta 50
(50, 18, 1, 42.00, 0), (50, 1, 1, 35.00, 0), (50, 2, 1, 32.00, 0),
-- Venta 51
(51, 9, 1, 89.00, 0),
-- Venta 52
(52, 31, 1, 72.00, 0),
-- Venta 53
(53, 43, 2, 85.00, 100), (53, 42, 3, 105.00, 0), (53, 7, 2, 79.00, 0),
-- Venta 54
(54, 32, 1, 280.00, 0),
-- Venta 55
(55, 1, 1, 35.00, 0), (55, 5, 1, 38.00, 0),
-- Venta 56
(56, 6, 1, 85.00, 0), (56, 10, 1, 65.00, 0),
-- Venta 57
(57, 43, 2, 85.00, 40), (57, 17, 1, 95.00, 0), (57, 22, 1, 110.00, 0),
-- Venta 58
(58, 18, 1, 42.00, 0), (58, 19, 1, 38.00, 0),
-- Venta 59
(59, 9, 1, 89.00, 0), (59, 28, 1, 48.00, 0),
-- Venta 60
(60, 2, 1, 32.00, 0), (60, 5, 1, 38.00, 0),
-- Venta 61
(61, 10, 1, 65.00, 10), (61, 3, 1, 45.00, 0), (61, 5, 1, 38.00, 0),
-- Venta 62
(62, 18, 1, 42.00, 0),
-- Venta 63
(63, 1, 1, 35.00, 0), (63, 34, 1, 30.00, 0), (63, 5, 1, 38.00, 0),
-- Venta 64
(64, 43, 2, 85.00, 60), (64, 17, 1, 95.00, 0), (64, 7, 2, 79.00, 0),
-- Venta 65
(65, 2, 1, 32.00, 0), (65, 5, 1, 38.00, 0), (65, 20, 1, 28.00, 0),
-- Venta 66
(66, 6, 1, 85.00, 0),
-- Venta 67
(67, 8, 1, 95.00, 0), (67, 33, 1, 45.00, 0),
-- Venta 68
(68, 9, 1, 89.00, 0), (68, 28, 1, 48.00, 0),
-- Venta 69
(69, 18, 1, 42.00, 0), (69, 19, 1, 38.00, 0),
-- Venta 70
(70, 31, 1, 72.00, 0),
-- Venta 71
(71, 43, 1, 85.00, 0), (71, 17, 1, 95.00, 0), (71, 22, 1, 110.00, 0),
-- Venta 72
(72, 14, 1, 85.00, 0),
-- Venta 73
(73, 1, 1, 35.00, 0), (73, 5, 1, 38.00, 0),
-- Venta 74
(74, 43, 2, 85.00, 120), (74, 7, 2, 79.00, 0), (74, 17, 1, 95.00, 0),
-- Venta 75
(75, 18, 1, 42.00, 0), (75, 19, 1, 38.00, 0), (75, 20, 1, 28.00, 0),
-- Venta 76
(76, 6, 1, 85.00, 0), (76, 10, 1, 65.00, 0),
-- Venta 77
(77, 9, 1, 89.00, 0), (77, 8, 1, 95.00, 0),
-- Venta 78
(78, 23, 1, 180.00, 0), (78, 22, 1, 110.00, 0),
-- Venta 79
(79, 31, 1, 72.00, 0),
-- Venta 80
(80, 43, 2, 85.00, 80), (80, 42, 4, 105.00, 0), (80, 7, 2, 79.00, 0),
-- Venta 81
(81, 1, 1, 35.00, 0), (81, 19, 1, 38.00, 0), (81, 10, 1, 65.00, 0),
-- Venta 82
(82, 3, 1, 45.00, 0), (82, 2, 1, 32.00, 0),
-- Venta 83
(83, 18, 1, 42.00, 0), (83, 34, 1, 30.00, 0),
-- Venta 84
(84, 44, 1, 480.00, 0),
-- Venta 85
(85, 43, 1, 85.00, 50), (85, 17, 1, 95.00, 0), (85, 7, 2, 79.00, 0),
-- Venta 86
(86, 1, 1, 35.00, 0), (86, 5, 1, 38.00, 0),
-- Venta 87
(87, 8, 1, 95.00, 0), (87, 9, 1, 89.00, 0),
-- Venta 88
(88, 9, 1, 89.00, 10), (88, 10, 1, 65.00, 0),
-- Venta 89 (ANULADA - de todas formas tiene detalle)
(89, 18, 1, 42.00, 0),
-- Venta 90
(90, 43, 2, 85.00, 150), (90, 42, 4, 105.00, 0), (90, 7, 2, 79.00, 0), (90, 17, 2, 95.00, 0),
-- Venta 91
(91, 1, 1, 35.00, 0), (91, 5, 1, 38.00, 0),
-- Venta 92
(92, 18, 1, 42.00, 0), (92, 19, 1, 38.00, 0),
-- Venta 93
(93, 32, 1, 280.00, 0), (93, 6, 1, 85.00, 0), (93, 7, 1, 79.00, 0),
-- Venta 94
(94, 43, 1, 85.00, 50), (94, 42, 3, 105.00, 0), (94, 7, 2, 79.00, 0),
-- Venta 95
(95, 1, 1, 35.00, 0), (95, 2, 1, 32.00, 0),
-- Venta 96
(96, 8, 1, 95.00, 0),
-- Venta 97
(97, 9, 1, 89.00, 10), (97, 3, 1, 45.00, 0),
-- Venta 98
(98, 23, 1, 130.00, 10),
-- Venta 99
(99, 1, 1, 35.00, 0), (99, 2, 1, 32.00, 0), (99, 10, 1, 65.00, 0),
-- Venta 100
(100, 1, 1, 35.00, 0), (100, 5, 1, 38.00, 0), (100, 2, 1, 32.00, 0);



-- MOVIMIENTO DE STOCK (80)
INSERT INTO movimiento_stock (id_producto, id_almacen, tipo_movimiento, cantidad, stock_anterior, stock_nuevo, motivo, id_referencia, id_usuario) VALUES
-- Entradas por compras
(1, 1, 'ENTRADA', 30, 50, 80, 'Compra proveedor', 1, 4),
(2, 1, 'ENTRADA', 25, 50, 75, 'Compra proveedor', 1, 4),
(5, 1, 'ENTRADA', 20, 45, 65, 'Compra proveedor', 1, 4),
(3, 1, 'ENTRADA', 20, 40, 60, 'Compra proveedor', 2, 4),
(4, 1, 'ENTRADA', 15, 35, 50, 'Compra proveedor', 2, 4),
(8, 4, 'ENTRADA', 20, 35, 55, 'Compra proveedor', 3, 8),
(9, 4, 'ENTRADA', 18, 42, 60, 'Compra proveedor', 3, 8),
(11, 4, 'ENTRADA', 12, 58, 70, 'Compra proveedor', 3, 8),
(18, 1, 'ENTRADA', 20, 70, 90, 'Compra proveedor', 4, 4),
(19, 1, 'ENTRADA', 20, 65, 85, 'Compra proveedor', 4, 4),
(21, 1, 'ENTRADA', 10, 20, 30, 'Compra proveedor', 5, 8),
(22, 1, 'ENTRADA', 10, 25, 35, 'Compra proveedor', 5, 8),
(6, 1, 'ENTRADA', 10, 30, 40, 'Compra proveedor', 6, 4),
(7, 1, 'ENTRADA', 12, 23, 35, 'Compra proveedor', 6, 4),
(25, 4, 'ENTRADA', 20, 35, 55, 'Compra proveedor', 7, 8),
(26, 4, 'ENTRADA', 18, 32, 50, 'Compra proveedor', 7, 8),
(14, 1, 'ENTRADA', 8, 22, 30, 'Compra proveedor', 8, 4),
(15, 1, 'ENTRADA', 5, 15, 20, 'Compra proveedor', 8, 4),
(33, 4, 'ENTRADA', 15, 30, 45, 'Compra proveedor', 9, 8),
(41, 1, 'ENTRADA', 5, 10, 15, 'Compra proveedor', 10, 4),
(42, 1, 'ENTRADA', 8, 12, 20, 'Compra proveedor', 10, 4),
-- Salidas por ventas
(1, 1, 'SALIDA', 1, 80, 79, 'Venta al cliente', 1, 2),
(19, 1, 'SALIDA', 1, 85, 84, 'Venta al cliente', 1, 2),
(8, 1, 'SALIDA', 1, 55, 54, 'Venta al cliente', 2, 2),
(9, 4, 'SALIDA', 1, 60, 59, 'Venta al cliente', 3, 5),
(28, 1, 'SALIDA', 1, 40, 39, 'Venta al cliente', 3, 5),
(44, 1, 'SALIDA', 1, 8, 7, 'Venta al cliente', 4, 3),
(6, 1, 'SALIDA', 1, 40, 39, 'Venta al cliente', 5, 2),
(14, 1, 'SALIDA', 1, 30, 29, 'Venta al cliente', 6, 5),
(18, 1, 'SALIDA', 1, 90, 89, 'Venta al cliente', 7, 2),
(10, 1, 'SALIDA', 1, 45, 44, 'Venta al cliente', 8, 3),
(27, 1, 'SALIDA', 1, 40, 39, 'Venta al cliente', 9, 5),
(41, 1, 'SALIDA', 1, 15, 14, 'Venta al cliente', 10, 2),
(2, 1, 'SALIDA', 1, 75, 74, 'Venta al cliente', 11, 2),
(3, 1, 'SALIDA', 1, 60, 59, 'Venta al cliente', 11, 2),
(5, 1, 'SALIDA', 1, 65, 64, 'Venta al cliente', 12, 2),
(8, 1, 'SALIDA', 1, 54, 53, 'Venta al cliente', 13, 2),
(17, 1, 'SALIDA', 1, 25, 24, 'Venta al cliente', 14, 3),
(43, 3, 'SALIDA', 3, 12, 9, 'Venta al cliente', 15, 9),
(32, 1, 'SALIDA', 1, 12, 11, 'Venta al cliente', 25, 2),
(23, 1, 'SALIDA', 1, 15, 14, 'Venta al cliente', 29, 2),
-- Ajustes de inventario
(1, 1, 'AJUSTE', 2, 79, 81, 'Ajuste por conteo fisico', NULL, 1),
(8, 4, 'AJUSTE', -1, 55, 54, 'Producto deteriorado', NULL, 4),
(15, 1, 'AJUSTE', 3, 20, 23, 'Devolucion de cliente', NULL, 1),
(20, 1, 'AJUSTE', -2, 27, 25, 'Merma por manipulacion', NULL, 4),
(30, 3, 'AJUSTE', 2, 28, 30, 'Transferencia entre almacenes', NULL, 8),
(44, 1, 'AJUSTE', 1, 7, 8, 'Ajuste por error de registro', NULL, 1),
-- Mas entradas
(29, 3, 'ENTRADA', 10, 20, 30, 'Compra proveedor', 15, 4),
(30, 3, 'ENTRADA', 10, 18, 28, 'Compra proveedor', 15, 4),
(36, 1, 'ENTRADA', 8, 37, 45, 'Compra proveedor', 14, 8),
(37, 1, 'ENTRADA', 8, 32, 40, 'Compra proveedor', 14, 8),
(16, 1, 'ENTRADA', 10, 25, 35, 'Compra proveedor', 8, 4),
(47, 1, 'ENTRADA', 15, 35, 50, 'Compra proveedor', 12, 8),
(48, 1, 'ENTRADA', 12, 40, 52, 'Compra proveedor', 12, 8),
(49, 1, 'ENTRADA', 10, 90, 100, 'Compra proveedor', 12, 8),
-- Mas salidas por ventas
(26, 1, 'SALIDA', 1, 50, 49, 'Venta al cliente', 21, 2),
(31, 3, 'SALIDA', 1, 35, 34, 'Venta al cliente', 17, 3),
(33, 1, 'SALIDA', 1, 45, 44, 'Venta al cliente', 12, 2),
(35, 1, 'SALIDA', 1, 40, 39, 'Venta al cliente', 12, 2),
(4, 1, 'SALIDA', 1, 50, 49, 'Venta al cliente', 23, 2),
(46, 1, 'SALIDA', 1, 55, 54, 'Venta al cliente', 18, 2),
(22, 1, 'SALIDA', 1, 35, 34, 'Venta al cliente', 33, 5),
(9, 3, 'SALIDA', 1, 60, 59, 'Venta al cliente', 26, 3),
(14, 3, 'SALIDA', 1, 30, 29, 'Venta al cliente', 34, 3),
(41, 1, 'SALIDA', 1, 14, 13, 'Venta al cliente', 33, 5),
-- Transferencias entre almacenes
(1, 2, 'ENTRADA', 10, 0, 10, 'Transferencia desde almacen principal', NULL, 4),
(1, 1, 'SALIDA', 10, 81, 71, 'Transferencia a tienda Centro Lima', NULL, 4),
(8, 3, 'ENTRADA', 8, 0, 8, 'Transferencia desde almacen principal', NULL, 8),
(8, 1, 'SALIDA', 8, 54, 46, 'Transferencia a tienda San Miguel', NULL, 8),
(9, 2, 'ENTRADA', 6, 0, 6, 'Transferencia desde deposito', NULL, 8),
(9, 4, 'SALIDA', 6, 59, 53, 'Transferencia a tienda Centro Lima', NULL, 8),
(22, 3, 'ENTRADA', 5, 0, 5, 'Transferencia desde almacen principal', NULL, 4),
(22, 1, 'SALIDA', 5, 34, 29, 'Transferencia a tienda San Miguel', NULL, 4),
(29, 1, 'ENTRADA', 5, 0, 5, 'Transferencia desde deposito', NULL, 8),
(29, 3, 'SALIDA', 5, 30, 25, 'Transferencia a almacen principal', NULL, 8);




-- DEVOLUCIONES (12)
INSERT INTO devolucion (id_venta, id_usuario, fecha_devolucion, motivo, tipo_devolucion, estado, monto_devuelto) VALUES
(3, 2, '2024-01-20 10:00:00', 'Talla incorrecta, cliente solicita cambio a talla M', 'CAMBIO', 'APROBADA', 89.00),
(10, 5, '2024-02-05 11:30:00', 'Producto defectuoso, costura suelta en la prenda', 'REEMBOLSO', 'APROBADA', 280.00),
(14, 3, '2024-02-20 12:00:00', 'Color no era el esperado segun catalogo', 'CAMBIO', 'APROBADA', 95.00),
(20, 9, '2024-03-05 09:30:00', 'Prenda vino con mancha de fabrica', 'REEMBOLSO', 'APROBADA', 480.00),
(25, 2, '2024-03-30 10:00:00', 'Zapato talla equivocada, cliente pide cambio', 'CAMBIO', 'APROBADA', 280.00),
(39, 5, '2024-05-30 11:00:00', 'Jean tiene falla en cierre', 'REEMBOLSO', 'PENDIENTE', 0.00),
(48, 3, '2024-06-25 12:30:00', 'Vestido llego con rasgadura', 'CAMBIO', 'APROBADA', 85.00),
(53, 9, '2024-07-30 09:00:00', 'Blazer talla no coincide con la etiqueta', 'REEMBOLSO', 'APROBADA', 280.00),
(64, 2, '2024-09-22 10:30:00', 'Polo encogido al primer lavado', 'CAMBIO', 'RECHAZADA', 0.00),
(74, 5, '2024-10-30 11:00:00', 'Casaca con defecto en el cierre', 'REEMBOLSO', 'APROBADA', 180.00),
(84, 3, '2024-12-22 12:00:00', 'Traje no era el modelo correcto', 'CAMBIO', 'APROBADA', 480.00),
(89, 9, '2024-12-26 09:30:00', 'Cliente se arrepintio de la compra (venta anulada)', 'REEMBOLSO', 'APROBADA', 42.00);




-- DETALLE_DEVOLUCION (15)
INSERT INTO detalle_devolucion (id_devolucion, id_producto, cantidad, precio_unitario) VALUES
(1, 9, 1, 89.00),
(2, 41, 1, 280.00),
(3, 17, 1, 95.00),
(4, 44, 1, 480.00),
(5, 32, 1, 280.00),
(6, 9, 1, 89.00),
(7, 14, 1, 85.00),
(8, 41, 1, 280.00),
(9, 1, 1, 35.00),
(10, 23, 1, 180.00),
(11, 44, 1, 480.00),
(12, 18, 1, 42.00),
(1, 28, 1, 48.00),
(7, 34, 1, 30.00),
(3, 20, 1, 28.00);



-- CAJA (18)
INSERT INTO caja (id_usuario, id_almacen, fecha_apertura, fecha_cierre, monto_inicial, monto_final, total_ventas, total_devoluciones, estado) VALUES
(5, 2, '2024-01-12 08:00:00', '2024-01-12 20:00:00', 500.00, 1250.80, 850.00, 99.20, 'CERRADA'),
(5, 2, '2024-01-13 08:00:00', '2024-01-13 20:00:00', 500.00, 980.50, 620.00, 139.50, 'CERRADA'),
(6, 3, '2024-01-15 08:00:00', '2024-01-15 20:00:00', 300.00, 1850.00, 1600.00, 50.00, 'CERRADA'),
(5, 2, '2024-02-01 08:00:00', '2024-02-01 20:00:00', 500.00, 1100.30, 750.00, 150.00, 'CERRADA'),
(6, 3, '2024-02-10 08:00:00', '2024-02-10 20:00:00', 300.00, 2200.80, 1980.00, 80.00, 'CERRADA'),
(5, 2, '2024-03-02 08:00:00', '2024-03-02 20:00:00', 500.00, 890.10, 560.00, 169.90, 'CERRADA'),
(6, 3, '2024-03-12 08:00:00', '2024-03-12 20:00:00', 300.00, 1650.40, 1400.00, 50.40, 'CERRADA'),
(5, 2, '2024-04-02 08:00:00', '2024-04-02 20:00:00', 500.00, 1350.64, 920.00, 70.00, 'CERRADA'),
(6, 3, '2024-05-03 08:00:00', '2024-05-03 20:00:00', 300.00, 1520.10, 1280.00, 60.00, 'CERRADA'),
(5, 2, '2024-06-02 08:00:00', '2024-06-02 20:00:00', 500.00, 1180.30, 790.00, 109.70, 'CERRADA'),
(6, 3, '2024-07-03 08:00:00', '2024-07-03 20:00:00', 300.00, 1950.64, 1700.00, 50.00, 'CERRADA'),
(5, 2, '2024-08-02 08:00:00', '2024-08-02 20:00:00', 500.00, 1420.42, 1050.00, 129.58, 'CERRADA'),
(6, 3, '2024-09-03 08:00:00', '2024-09-03 20:00:00', 300.00, 1100.60, 850.00, 50.00, 'CERRADA'),
(5, 2, '2024-10-03 08:00:00', '2024-10-03 20:00:00', 500.00, 1580.42, 1180.00, 99.58, 'CERRADA'),
(6, 3, '2024-11-04 08:00:00', '2024-11-04 20:00:00', 300.00, 1320.10, 1080.00, 59.90, 'CERRADA'),
(5, 2, '2024-12-02 08:00:00', '2024-12-02 20:00:00', 500.00, 1650.70, 1280.00, 129.30, 'CERRADA'),
(6, 3, '2024-12-20 08:00:00', '2024-12-20 20:00:00', 500.00, 2800.40, 2450.00, 149.60, 'CERRADA'),
(5, 2, '2024-12-28 08:00:00', NULL, 500.00, NULL, 185.00, 0.00, 'ABIERTA');





-- ALERTAS (15)
INSERT INTO alerta (tipo_alerta, mensaje, id_producto, leida, fecha_creacion) VALUES
('STOCK_MINIMO', 'El producto Vestido Coctel Negro tiene stock bajo (15 unidades, minimo: 3)', 15, TRUE, '2024-03-10 08:00:00'),
('STOCK_MINIMO', 'El producto Bota Cuero Hombre tiene stock critico (8 unidades, minimo: 3)', 32, FALSE, '2024-04-15 08:00:00'),
('STOCK_MINIMO', 'El producto Traje Completo Hombre esta por debajo del minimo (5 unidades)', 44, FALSE, '2024-05-20 08:00:00'),
('STOCK_MINIMO', 'Abrigo Largo Mujer con stock bajo (10 unidades, minimo: 3)', 23, TRUE, '2024-06-05 08:00:00'),
('STOCK_MINIMO', 'Blazer Hombre Gris: solo quedan 8 unidades en almacen', 41, FALSE, '2024-07-12 08:00:00'),
('STOCK_MINIMO', 'Vestido Formal Mujer Azul cerca del limite minimo (10 unidades)', 43, TRUE, '2024-08-08 08:00:00'),
('STOCK_MINIMO', 'Casaca Rompeviento: stock actual 12 unidades (minimo: 3)', 24, FALSE, '2024-09-15 08:00:00'),
('VENTA_ANULADA', 'Se anulo la venta B001-00088 por solicitud del cliente', NULL, TRUE, '2024-12-24 15:00:00'),
('DEVOLUCION', 'Devolucion #9 rechazada: polo encogido no aplica garantia segun politica', NULL, TRUE, '2024-09-23 10:00:00'),
('STOCK_MINIMO', 'Vestido Coctel Negro: quedan solo 12 unidades disponibles', 15, FALSE, '2024-10-20 08:00:00'),
('STOCK_MINIMO', 'Short Jean Mujer con stock bajo (18 unidades, minimo: 5)', 12, FALSE, '2024-11-05 08:00:00'),
('STOCK_MAXIMO', 'Pack Medias 6 Pares supero el stock maximo (210 unidades)', 20, TRUE, '2024-03-25 08:00:00'),
('DEVOLUCION', 'Nueva devolucion pendiente de aprobacion: Jean con falla en cierre (Venta #39)', NULL, FALSE, '2024-05-30 12:00:00'),
('STOCK_MINIMO', 'Pantalon Vestir Hombre Negro por debajo del minimo (15 unidades)', 42, FALSE, '2024-12-10 08:00:00'),
('VENTA_ALTA', 'Traje Completo Hombre con alta demanda en diciembre, considerar restock urgente', 44, FALSE, '2024-12-20 08:00:00');

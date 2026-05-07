--------- CATEGORIAS --------
CREATE TABLE categorias (
	id_categoria SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	descripcion TEXT,
	activo BOOLEAN DEFAULT TRUE,
	fecha_creacion TIMESTAMP WITH TIME ZONE DEFAULT NOW()
	
);

------ PROVEEDORES ------
CREATE TABLE proveedor (
	id_proveedor SERIAL PRIMARY KEY,
	razon_social VARCHAR(150) NOT NULL,
	ruc VARCHAR(11) UNIQUE,
	telefono TEXT,
	email VARCHAR(100),
	direccion TEXT,
	contacto VARCHAR(100),
	activo BOOLEAN DEFAULT TRUE,
	fecha_creacion TIMESTAMP DEFAULT NOW()
);

------- ALMACENES ------- 
CREATE TABLE almacen (
	id_almacen SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	ubicacion TEXT,
	activo BOOLEAN DEFAULT TRUE
);


-------- PRODUCTOS --------
CREATE TABLE producto ( 
	id_producto SERIAL PRIMARY KEY,
	codigo VARCHAR(50) UNIQUE NOT NULL,
	nombre VARCHAR(150)NOT NULL,
	descripcion TEXT,
	id_categoria INT REFERENCES categorias(id_categoria),
	id_proveedor INT REFERENCES proveedor(id_proveedor),
	precio_compra DECIMAL(12,2) NOT NULL DEFAULT 0,
	precio_venta DECIMAL(12,2) NOT NULL DEFAULT 0,
	stock_actual INT DEFAULT 0,
	stock_minimo INT DEFAULT 5,
	stock_maximo INT DEFAULT 100,
	unidad_medida VARCHAR(30) DEFAULT 'UND',
	activo BOOLEAN DEFAULT TRUE,
	fecha_creacion TIMESTAMP DEFAULT NOW(),
	fecha_actualizacion TIMESTAMP DEFAULT NOW()
);

--------- TIPO DE DOCUMENTO ----------
CREATE TABLE tipo_documento (
	id_tipo_doc SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	codigo  VARCHAR(10)
);

--------- CLIENTE ---------
CREATE TABLE cliente (
	id_cliente SERIAL PRIMARY KEY,
	id_tipo_doc INT REFERENCES tipo_documento(id_tipo_doc),
	nro_documento VARCHAR(20),
	nombres VARCHAR(100),
	apellidos VARCHAR(100),
	razon_social VARCHAR(150),
	telefono TEXT,
	email VARCHAR(100),
	direccion TEXT,
	tipo_cliente VARCHAR(20) DEFAULT 'NATURAL' CHECK(tipo_cliente IN ('NATURAL', 'JURIDICO')),
	activo BOOLEAN DEFAULT TRUE,
	fecha_creacion TIMESTAMP DEFAULT NOW()
);

---------- ROL ----------
CREATE TABLE rol (
	id_rol SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	descripcion TEXT
);

------------ USUARIO ------------
CREATE TABLE usuario (
	id_usuario SERIAL PRIMARY KEY,
	id_rol INT REFERENCES rol(id_rol),
	username VARCHAR(50) UNIQUE NOT NULL,
	password_hash VARCHAR(255) NOT NULL,
	nombres VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	email VARCHAR(100),
	activo BOOLEAN DEFAULT TRUE,
	fecha_creacion TIMESTAMP DEFAULT NOW()
);


---------- COMPRAS (ENTRADAS DE STOCK) ----------
CREATE TABLE compra (
	id_compra SERIAL PRIMARY KEY,
	id_proveedor INT REFERENCES proveedor(id_proveedor),
	id_usuario INT REFERENCES usuario(id_usuario),
	id_almacen INT REFERENCES almacen(id_almacen),
	nro_comprobante VARCHAR(50),
	fecha_compra TIMESTAMP DEFAULT NOW(),
	subtotal DECIMAL(12,2) DEFAULT 0,
	igv DECIMAL(12,2) DEFAULT 0,
	total DECIMAL(12,2) DEFAULT 0,
	estado VARCHAR(20) DEFAULT 'PENDIENTE' CHECK (estado IN ('PENDIENTE', 'CONFIRMADA', 'ANULADA')),
	observaciones TEXT
);

------------ DETALLE_COMPRA -----------
CREATE TABLE detalle_compra (
	id_detalle SERIAL PRIMARY KEY,
	id_compra INT REFERENCES compra(id_compra) ON DELETE CASCADE,
	id_producto INT REFERENCES producto(id_producto),
	cantidad INT NOT NULL CHECK (cantidad > 0),
	precio_unitario DECIMAL(12,2) NOT NULL,
	subtotal DECIMAL(12,2) GENERATED ALWAYS AS (cantidad * precio_unitario) STORED
);

-------- TIPO DE PAGO ------
CREATE TABLE tipo_pago (
	id_tipo_pago SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL
);

----- VENTA -----
CREATE TABLE venta (
	id_venta SERIAL PRIMARY KEY,
	id_cliente INT REFERENCES cliente(id_cliente),
	id_usuario INT REFERENCES usuario(id_usuario),
	id_almacen INT REFERENCES almacen(id_almacen),
	id_tipo_pago INT REFERENCES tipo_pago(id_tipo_pago),
	nro_comprobante VARCHAR(50) UNIQUE,
	tipo_comprobante VARCHAR(20) DEFAULT 'BOLETA' CHECK (tipo_comprobante IN ('BOLETA','FACTURA','TICKET')),
	fecha_venta TIMESTAMP DEFAULT NOW(),
	subtotal DECIMAL(12,2) DEFAULT 0,
	descuento DECIMAL(12,2) DEFAULT 0,
	igv DECIMAL(12,2) DEFAULT 0,
	total DECIMAL(12,2) DEFAULT 0,
	estado VARCHAR(20) DEFAULT 'COMPLETADA' CHECK (estado IN ('COMPLETADA','ANULADA','PENDIENTE')),
	observacion TEXT
);

------- DETALLE_VENTA ------
CREATE TABLE detalle_venta (
	id_detalle SERIAL PRIMARY KEY,
	id_venta INT REFERENCES venta(id_venta) ON DELETE CASCADE,
	id_producto INT REFERENCES producto(id_producto),
	cantidad INT NOT NULL CHECK (cantidad > 0),
	precio_unitario DECIMAL(12,2) NOT NULL,
	descuento DECIMAL(12,2) DEFAULT 0,
	subtotal DECIMAL(12,2) GENERATED ALWAYS AS (cantidad * precio_unitario) STORED
);


---------- INVENTARIO/MOVIMIENTOS DE STOCK ----------

CREATE TABLE movimiento_stock (
	id_movimiento SERIAL PRIMARY KEY,
	id_producto INT REFERENCES producto(id_producto),
	id_almacen INT REFERENCES almacen(id_almacen),
	tipo_movimiento VARCHAR(20) NOT NULL CHECK (tipo_movimiento IN ('ENTRADA','SALIDA','AJUSTE')),
	cantidad INT NOT NULL,
	stock_anterior INT,
	stock_nuevo INT,
	motivo VARCHAR(100),
	id_referencia INT,
	fecha TIMESTAMP DEFAULT NOW(),
	id_usuario INT REFERENCES usuario(id_usuario)
);


----------- DEVOLUCIONES ------------

CREATE TABLE devolucion (
	id_devolucion SERIAL PRIMARY KEY,
	id_venta INT REFERENCES venta(id_venta),
	id_usuario INT REFERENCES usuario(id_usuario),
	fecha_devolucion TIMESTAMP DEFAULT NOW(),
	motivo TEXT NOT NULL,
	tipo_devolucion VARCHAR(20) DEFAULT 'CAMBIO' CHECK (tipo_devolucion IN ('CAMBIO','REEMBOLSO')),
	estado VARCHAR(20) DEFAULT 'PENDIENTE' CHECK (estado IN('PENDIENTE','APROBADA','RECHAZADA')),
	monto_devuelto DECIMAL(12,2) DEFAULT 0
);


------- DETALLE_DEVOLUCION --------
CREATE TABLE detalle_devolucion (
	id_detalle SERIAL PRIMARY KEY,
	id_devolucion INT REFERENCES devolucion(id_devolucion) ON DELETE CASCADE,
	id_producto INT REFERENCES producto(id_producto),
	cantidad INT NOT NULL CHECK (cantidad > 0),
	precio_unitario DECIMAL(12,2) NOT NULL
);

----------- CAJA ------------

CREATE TABLE caja (
	id_caja SERIAL PRIMARY KEY,
	id_usuario INT REFERENCES usuario(id_usuario),
	id_almacen INT REFERENCES almacen(id_almacen),
	fecha_apertura TIMESTAMP DEFAULT NOW(),
	fecha_cierre TIMESTAMP,
	monto_inicial DECIMAL(12,2) NOT NULL DEFAULT 0,
	monto_final  DECIMAL(12,2),
	total_ventas DECIMAL(12,2) DEFAULT 0,
	total_devoluciones DECIMAL(12,2) DEFAULT 0,
	estado VARCHAR(20) DEFAULT 'ABIERTA' CHECK (estado IN('ABIERTA','CERRADA'))
);


--------- ALERTAS DEL SISTEMA --------

CREATE TABLE alerta (
	id_alerta SERIAL PRIMARY KEY,
	tipo_alerta VARCHAR(50) NOT NULL,
	mensaje TEXT NOT NULL,
	id_producto INT REFERENCES producto(id_producto),
	leida BOOLEAN DEFAULT FALSE,
	fecha_creacion TIMESTAMP DEFAULT NOW()
);
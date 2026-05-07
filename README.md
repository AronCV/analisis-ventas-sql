# 🛍️ Análisis de Ventas SQL — Tienda de Ropa

Sistema de base de datos relacional para la gestión de una tienda de ropa, desarrollado con **PostgreSQL**. Incluye el diseño completo del esquema, datos de prueba y más de 28 consultas SQL organizadas por nivel de complejidad.

---

## 🗂️ Estructura del repositorio

```
analisis-ventas-sql/
│
├── schema/
│   └── create_tables.sql       ← Creación de las 18 tablas y sus relaciones
│
├── data/
│   └── inserts.sql             ← ~730 filas de datos de prueba coherentes
│
├── queries/
│   ├── basicas.sql             ← 8 consultas nivel básico
│   ├── intermedias.sql         ← 10 consultas nivel intermedio
│   └── avanzadas.sql           ← 10 consultas nivel avanzado
│
├── LICENSE
└── README.md
```

---

## 📌 Descripción del proyecto

Este proyecto simula el backend de datos de un sistema **Punto de Venta (POS) retail** peruano. Fue diseñado para practicar y demostrar habilidades en SQL desde consultas básicas hasta técnicas avanzadas como CTEs, window functions y subconsultas correlacionadas.

### Módulos del sistema:

| Módulo | Descripción |
|---|---|
| 🏷️ Productos | Catálogo organizado por categorías y proveedores, con control de stock mínimo y máximo |
| 🛒 Ventas | Registro de ventas con boleta, factura y ticket, con descuentos e IGV |
| 📦 Compras | Compras a proveedores con detalle por producto y estado de confirmación |
| 📊 Inventario | Movimientos de stock: entradas, salidas y ajustes con historial completo |
| 🔄 Devoluciones | Gestión de cambios y reembolsos por venta, con estado de aprobación |
| 💰 Caja | Control de apertura y cierre de caja por turno y almacén |
| 🔔 Alertas | Notificaciones automáticas de stock bajo, ventas anuladas y devoluciones |

---

## 🗃️ Modelo de datos

El sistema cuenta con **18 tablas** relacionadas entre sí mediante claves foráneas:

| Tabla | Descripción |
|---|---|
| `categorias` | Categorías de productos (polos, jeans, calzado, etc.) |
| `proveedor` | Proveedores con RUC y datos de contacto |
| `almacen` | Almacenes y tiendas físicas |
| `producto` | Catálogo con precios de compra/venta y control de stock |
| `tipo_documento` | DNI, RUC, Carnet de Extranjería, Pasaporte |
| `cliente` | Clientes naturales y jurídicos |
| `rol` | Roles del sistema: Administrador, Vendedor, Almacenero, Cajero |
| `usuario` | Usuarios del sistema con rol asignado |
| `tipo_pago` | Efectivo, tarjeta de débito/crédito, Yape/Plin, transferencia |
| `compra` | Cabecera de órdenes de compra a proveedores |
| `detalle_compra` | Productos por compra con subtotal calculado automáticamente |
| `venta` | Cabecera de ventas con comprobante, descuento e IGV |
| `detalle_venta` | Productos por venta con subtotal calculado automáticamente |
| `movimiento_stock` | Historial de entradas, salidas y ajustes de inventario |
| `devolucion` | Devoluciones con tipo (cambio/reembolso) y estado de aprobación |
| `detalle_devolucion` | Productos incluidos en cada devolución |
| `caja` | Registro de apertura y cierre de caja por turno |
| `alerta` | Alertas automáticas del sistema (stock mínimo, ventas anuladas, etc.) |

---

## 📊 Datos de prueba

Los datos fueron diseñados para ser coherentes entre sí: los IDs coinciden, las fechas tienen orden cronológico durante todo el 2024 y los montos son consistentes con los detalles de cada venta o compra.

| Tabla | Registros |
|---|---|
| Categorías | 10 |
| Proveedores | 12 |
| Almacenes | 4 |
| Productos | 60 |
| Clientes | 40 (naturales, jurídicos y extranjeros) |
| Usuarios | 10 |
| Compras | 35 |
| Detalle de compras | ~105 |
| Ventas | 100 (boletas, facturas, tickets; 1 anulada) |
| Detalle de ventas | ~240 |
| Movimientos de stock | 80 |
| Devoluciones | 12 (aprobadas, rechazadas, pendientes) |
| Registros de caja | 18 (1 abierta, resto cerradas) |
| Alertas | 15 |
| **Total aproximado** | **~730 filas** |

---

## 🔍 Consultas SQL

### 🟢 Básicas — `queries/basicas.sql`
Consultas con `SELECT`, `WHERE`, `ORDER BY`, `JOIN` simples y `COUNT`.

1. Todos los productos activos con nombre, precio de compra y precio de venta
2. Clientes de tipo NATURAL ordenados alfabéticamente por apellido
3. Cantidad de productos por cada categoría
4. Ventas con estado COMPLETADA ordenadas de más reciente a más antigua
5. Proveedores con RUC registrado que están activos
6. Productos con stock actual por debajo del stock mínimo
7. Usuarios con su rol correspondiente
8. Compras realizadas durante el primer trimestre del 2024

---

### 🟡 Intermedias — `queries/intermedias.sql`
Consultas con `JOIN` múltiples, `GROUP BY`, `HAVING`, `AVG`, `LEFT JOIN` y filtros compuestos.

1. Total vendido por mes durante todo el 2024
2. Top 5 productos más vendidos por cantidad
3. Cada venta mostrando nombre del cliente, vendedor, almacén y total
4. Categoría que generó más ingresos en ventas
5. Clientes que han realizado más de 3 compras
6. Ticket promedio de venta por tipo de comprobante (boleta, factura, ticket)
7. Productos que nunca han sido vendidos
8. Total comprado por proveedor en compras confirmadas
9. Vendedor con más ventas registradas y su monto total
10. Devoluciones aprobadas con motivo, monto y comprobante de venta original

---

### 🔴 Avanzadas — `queries/avanzadas.sql`
Consultas con `CTEs`, window functions (`RANK`, `ROW_NUMBER`, `SUM OVER`), `PARTITION BY`, `COALESCE`, `NULLIF` y subconsultas correlacionadas.

1. **Top 3 productos más rentables** — utilidad total por producto `(CTE + RANK)`
2. **Resumen mensual de ventas** — total, monto y promedio por mes `(CTE)`
3. **Ranking de vendedores** — por total vendido en ventas completadas `(CTE + RANK)`
4. **Producto estrella por categoría** — el más vendido dentro de cada una `(CTE + ROW_NUMBER + PARTITION BY)`
5. **Tasa de devolución por producto** — porcentaje devuelto vs vendido `(CTE + COALESCE + NULLIF)`
6. **Evolución de stock** — historial de los 5 productos más movidos `(CTE + subconsulta)`
7. **Clientes multitrimestre** — los que compraron en los 4 trimestres del 2024 `(EXTRACT + HAVING)`
8. **Rendimiento por almacén** — ventas vs devoluciones con resultado neto `(CTEs múltiples)`
9. **Acumulado de ventas en diciembre 2024** — día a día con total corrido `(SUM OVER ORDER BY)`
10. **Clientes VIP** — gasto total superior al promedio general de clientes `(subconsulta + AVG)`

---

## ⚙️ Tecnologías

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?style=flat&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Avanzado-orange?style=flat)
![pgAdmin](https://img.shields.io/badge/pgAdmin-4-336791?style=flat)

- **Motor de base de datos:** PostgreSQL 16
- **Herramienta de gestión:** pgAdmin 4

---

## 🚀 Cómo ejecutar

1. Tener instalado **PostgreSQL** y **pgAdmin 4**
2. Crear una base de datos nueva:
```sql
CREATE DATABASE analisis_ventas;
```
3. Ejecutar `schema/create_tables.sql` para crear las 18 tablas
4. Ejecutar `data/inserts.sql` para cargar los datos de prueba
5. Explorar las consultas en la carpeta `queries/`

> ⚠️ Es importante ejecutar primero el schema y luego los inserts, respetando ese orden para evitar errores de claves foráneas.

---

## 👨‍💻 Autor

**[Aron Enrique Chavez Vega]**  
[LinkedIn](https://www.linkedin.com/in/aron-enrique-334963394/) · [GitHub](https://github.com/AronCV)

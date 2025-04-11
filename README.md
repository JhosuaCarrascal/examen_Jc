# 📦 Examen PostgreSQL - Sistema de Inventario 

Este proyecto fue desarrollado como parte de un examen práctico. Simula un sistema de gestión de inventario para una tienda de tecnología utilizando PostgreSQL.

---

## 🧩 Modelo Entidad-Relación

El sistema está basado en 5 entidades principales:

- **Producto**: nombre, categoría, precio, stock, proveedor.
- **Proveedor**: nombre, contacto.
- **Cliente**: nombre, correo, teléfono.
- **Venta**: fecha, cliente.
- **DetalleVenta**: productos vendidos por venta.

📌 **Modelo E-R hecho a mano** por el estudiante:  


---

## 📁 Archivos del Proyecto

| Archivo | Descripción |
|--------|-------------|
| `db.sql` | Script para crear las tablas con restricciones y relaciones. |
| `insert.sql` | Inserciones de datos realistas (15 o más por tabla). |
| `queries.sql` | Consultas avanzadas requeridas por el examen. |
| `procedureAndFunctions.sql` | Procedimiento almacenado para registrar una venta. |
| `modelo_er.png` | Imagen del modelo E-R hecha a mano. |
| `README.md` | Documentación y guía de uso. |

---

## ⚙️ Cómo ejecutar

1. Crear la base de datos en PostgreSQL:  
   ```sql
   CREATE DATABASE techzone;


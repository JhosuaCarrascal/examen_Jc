# Sistema de Inventario - EXAMEN_JC

Este proyecto es una solución para gestionar productos, ventas, clientes y proveedores en una tienda de tecnología.

## Estructura del proyecto

- `modelo_er.png`: Diagrama E-R del sistema.
- `db.sql`: Creación de tablas y restricciones.
- `insert.sql`: Inserción de datos de prueba (15 por tabla).
- `queries.sql`: Consultas para análisis de ventas y clientes.
- `procedureAndFunctions.sql`: Función para registrar ventas validando stock.
- `README.md`: Documentación y pasos de ejecución.

## Cómo ejecutar

1. Crear la base de datos en PostgreSQL.
2. Ejecutar `db.sql` para crear las tablas.
3. Ejecutar `insert.sql` para cargar los datos de prueba.
4. Ejecutar `queries.sql` para analizar datos.
5. Ejecutar la función `registrar_venta` con:
   ```sql
   SELECT registrar_venta(1, 2, 3);
   ```

## Autor

[Tu nombre aquí]

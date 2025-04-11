-- Productos con stock menor a 5
SELECT * FROM producto WHERE stock < 5;

-- Ventas totales de marzo 2025
SELECT SUM(p.precio * dv.cantidad) AS total_ventas
FROM venta v
JOIN detalle_venta dv ON v.id = dv.id_venta
JOIN producto p ON p.id = dv.id_producto
WHERE DATE_PART('month', v.fecha) = 3 AND DATE_PART('year', v.fecha) = 2025;

-- Cliente con más compras
SELECT c.nombre, COUNT(v.id) AS total_compras
FROM cliente c
JOIN venta v ON c.id = v.id_cliente
GROUP BY c.id
ORDER BY total_compras DESC
LIMIT 1;

-- 5 productos más vendidos
SELECT p.nombre, SUM(dv.cantidad) AS total_vendidos
FROM detalle_venta dv
JOIN producto p ON dv.id_producto = p.id
GROUP BY p.id
ORDER BY total_vendidos DESC
LIMIT 5;

-- Ventas en un rango de fechas
SELECT * FROM venta
WHERE fecha BETWEEN '2025-03-01' AND '2025-03-04';

-- Clientes que no han comprado en los últimos 6 meses
SELECT * FROM cliente
WHERE id NOT IN (
    SELECT id_cliente FROM venta
    WHERE fecha > CURRENT_DATE - INTERVAL '6 months'
);

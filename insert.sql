-- Proveedores
INSERT INTO proveedor (nombre, correo, telefono) VALUES
('Tech Supplies SAS', 'contacto@techsupplies.com', '3104567890'),
('Electronix Ltda', 'ventas@electronix.com', '3204567891'),
('Mundo PC', 'info@mundopc.com', '3004567892'),
('CompuTech', 'soporte@computech.com', '3114567893'),
('Digital World', 'contacto@digitalworld.com', '3124567894');

-- Productos
INSERT INTO producto (nombre, categoria, precio, stock, id_proveedor) VALUES
('Mouse Logitech', 'Periféricos', 85000, 10, 1),
('Teclado Redragon', 'Periféricos', 120000, 3, 2),
('Monitor Samsung 24"', 'Pantallas', 750000, 7, 3),
('Laptop ASUS i5', 'Portátiles', 2500000, 2, 4),
('Disco Duro 1TB', 'Almacenamiento', 200000, 5, 5),
('Memoria RAM 8GB', 'Componentes', 150000, 8, 1),
('Tarjeta Gráfica GTX 1660', 'Componentes', 1200000, 1, 2),
('Mousepad Gamer', 'Accesorios', 35000, 20, 3),
('Cable HDMI', 'Accesorios', 20000, 15, 4),
('Cargador Universal', 'Accesorios', 45000, 6, 5);

-- Clientes
INSERT INTO cliente (nombre, correo, telefono) VALUES
('Carlos Ruiz', 'carlos@email.com', '3001234567'),
('Laura Torres', 'laura@email.com', '3011234567'),
('Daniel Gómez', 'daniel@email.com', '3021234567'),
('Mónica Peña', 'monica@email.com', '3031234567'),
('Andrés Ramírez', 'andres@email.com', '3041234567');

-- Ventas
INSERT INTO venta (fecha, id_cliente) VALUES
('2025-03-01', 1), ('2025-03-02', 2), ('2025-03-03', 3), ('2025-03-04', 4), ('2025-03-05', 5);

-- Detalle de ventas
INSERT INTO detalle_venta (id_venta, id_producto, cantidad) VALUES
(1, 1, 2), (1, 2, 1), (2, 3, 1), (3, 4, 1), (4, 5, 2), (5, 6, 1), (2, 7, 1), (3, 8, 2), (4, 9, 1), (5, 10, 1);

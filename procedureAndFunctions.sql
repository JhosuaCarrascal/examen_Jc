CREATE OR REPLACE FUNCTION registrar_venta(p_id_cliente INT, p_id_producto INT, p_cantidad INT)
RETURNS VOID AS $$
DECLARE
    stock_actual INT;
    p_id_venta INT;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM cliente WHERE id = p_id_cliente) THEN
        RAISE NOTICE 'Cliente no existe';
        RETURN;
    END IF;

    SELECT stock INTO stock_actual FROM producto WHERE id = p_id_producto;
    IF stock_actual IS NULL THEN
        RAISE NOTICE 'Producto no existe';
        RETURN;
    ELSIF stock_actual < p_cantidad THEN
        RAISE NOTICE 'Stock insuficiente. Disponible: %', stock_actual;
        RETURN;
    END IF;

    INSERT INTO venta (id_cliente) VALUES (p_id_cliente) RETURNING id INTO p_id_venta;

    INSERT INTO detalle_venta (id_venta, id_producto, cantidad)
    VALUES (p_id_venta, p_id_producto, p_cantidad);

    UPDATE producto SET stock = stock - p_cantidad WHERE id = p_id_producto;

    RAISE NOTICE 'Venta registrada exitosamente';
END;
$$ LANGUAGE plpgsql;

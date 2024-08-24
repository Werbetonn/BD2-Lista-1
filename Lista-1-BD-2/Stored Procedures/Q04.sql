CREATE OR REPLACE PROCEDURE ExcluirCliente(cliente_id INTEGER) AS $$
BEGIN
    DELETE FROM Pedidos WHERE ClienteID = cliente_id;
    DELETE FROM Clientes WHERE ClienteID = cliente_id;
END;
$$ LANGUAGE plpgsql;
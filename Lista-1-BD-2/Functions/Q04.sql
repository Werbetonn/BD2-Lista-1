CREATE FUNCTION ObterNomeCliente(cliente_id INTEGER)
RETURNS VARCHAR AS $$
DECLARE
    nome VARCHAR;
BEGIN
    SELECT Nome INTO nome
    FROM Clientes
    WHERE ClienteID = cliente_id;
    RETURN nome;
END;
$$ LANGUAGE plpgsql;
CREATE FUNCTION CalcularPontos(cliente_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
    pontos INTEGER := 0;
    pedido_valor NUMERIC;
BEGIN
    FOR pedido_valor IN SELECT ValorTotal FROM Pedidos WHERE ClienteID = cliente_id LOOP
        IF pedido_valor > 100 THEN
            pontos := pontos + 10;
        ELSE
            pontos := pontos + 5;
        END IF;
    END LOOP;
    RETURN pontos;
END;
$$ LANGUAGE plpgsql;
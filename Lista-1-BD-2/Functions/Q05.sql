CREATE FUNCTION CalcularFrete(valor_total NUMERIC, cidade VARCHAR)
RETURNS NUMERIC AS $$
BEGIN
    IF cidade = 'São Paulo' THEN
        RETURN valor_total * 0.05;
    ELSE
        RETURN valor_total * 0.1;
    END IF;
END;
$$ LANGUAGE plpgsql;
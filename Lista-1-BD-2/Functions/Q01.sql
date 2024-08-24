CREATE OR REPLACE FUNCTION CalcularIdade(DataNascimento DATE)
RETURNS INT AS $$
BEGIN
    RETURN EXTRACT(YEAR FROM age(current_date, DataNascimento));
END;
$$ LANGUAGE plpgsql;
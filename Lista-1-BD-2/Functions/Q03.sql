CREATE FUNCTION CalcularDesconto(produto_id INTEGER, desconto NUMERIC)
RETURNS NUMERIC AS $$
DECLARE
    preco NUMERIC;
BEGIN
    SELECT Preco INTO preco
    FROM Produtos
    WHERE ProdutoID = produto_id;
    RETURN preco * (1 - desconto/100);
END;
$$ LANGUAGE plpgsql;
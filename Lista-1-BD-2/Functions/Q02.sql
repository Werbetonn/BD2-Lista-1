CREATE FUNCTION VerificarEstoque(produto_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
    estoque INTEGER;
BEGIN
    SELECT estoque INTO estoque
    FROM Produtos
    WHERE ProdutoID = produto_id;
    RETURN estoque;
END;
$$ LANGUAGE plpgsql;
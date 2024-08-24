CREATE OR REPLACE PROCEDURE AtualizarPrecoProduto(
    produto_id INTEGER,
    novo_preco NUMERIC
) AS $$
BEGIN
    UPDATE Produtos
    SET Preco = novo_preco
    WHERE ProdutoID = produto_id;
END;
$$ LANGUAGE plpgsql;
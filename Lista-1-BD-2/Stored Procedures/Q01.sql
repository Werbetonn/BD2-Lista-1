CREATE OR REPLACE PROCEDURE AtualizarEstoqueEmMassa(
	ProdutoIDs INT[], 
	Quantidade INT) 
LANGUAGE plpgsql AS $$
DECLARE
    produto_id INT;
BEGIN
    FOREACH produto_id IN ARRAY ProdutoIDs
    LOOP
        UPDATE Produtos 
        SET Estoque = Estoque + Quantidade 
        WHERE ProdutoID = produto_id;
    END LOOP;
END;
$$;
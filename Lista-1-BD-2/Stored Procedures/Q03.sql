CREATE OR REPLACE PROCEDURE RealizarPedido(
    cliente_id INTEGER,
    itens_pedido INTEGER[],
    quantidades INTEGER[]
) AS $$
DECLARE
    i INTEGER;
    novo_pedido_id INTEGER;
BEGIN
    INSERT INTO Pedidos (ClienteID, DataPedido, ValorTotal)
    VALUES (cliente_id, CURRENT_DATE, 0)
    RETURNING PedidoID INTO novo_pedido_id;
    FOR i IN 1..array_length(itens_pedido, 1) LOOP
        INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
        SELECT novo_pedido_id, itens_pedido[i], quantidades[i], Preco
        FROM Produtos
        WHERE ProdutoID = itens_pedido[i];
    END LOOP;
END;
$$ LANGUAGE plpgsql;
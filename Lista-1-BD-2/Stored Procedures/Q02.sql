CREATE OR REPLACE PROCEDURE InserirCliente(
    nome VARCHAR,
    email VARCHAR,
    data_nascimento DATE,
    cidade VARCHAR
) AS $$
BEGIN
    INSERT INTO Clientes (Nome, Email, DataNascimento, Cidade)
    VALUES (nome, email, data_nascimento, cidade);
END;
$$ LANGUAGE plpgsql;
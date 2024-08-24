CREATE OR REPLACE PROCEDURE InserirClienteComVerificacao(
    nome VARCHAR,
    email VARCHAR,
    dataNascimento DATE,
    cidade VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
    emailExistente INT;
BEGIN
    SELECT COUNT(*) INTO emailExistente
    FROM Clientes
    WHERE Email = email;

    IF emailExistente > 0 THEN
        RAISE EXCEPTION 'Email já existe na tabela Clientes';
    ELSE
        INSERT INTO Clientes (Nome, Email, DataNascimento, Cidade)
        VALUES (nome, email, dataNascimento, cidade);
    END IF;
END;
$$;
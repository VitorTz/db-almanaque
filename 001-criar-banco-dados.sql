1 - psql -U postgres

2 - CREATE DATABASE nome_da_base;

3 - GRANT ALL PRIVILEGES ON DATABASE nome_da_base TO usuario;

3.1 ALTER DATABASE banco OWNER TO usuario;

4 - \c db_almanaque

5 - ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT ALL ON TABLES TO nome_do_usuario;

6 - ALTER DEFAULT PRIVILEGES IN SCHEMA public
    GRANT ALL ON SEQUENCES TO nome_do_usuario;


-- 2. Criando a tabela
CREATE TABLE carros (
    id SERIAL PRIMARY KEY, 
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    ano INT NOT NULL
);


-- 3. Criando tabela com chave estrangeira
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY, 
    cliente_id INTEGER NOT NULL REFERENCES clientes(id) ON DELETE CASCADE ON UPDATE CASCADE,
    data_pedido DATE,
    valor NUMERIC(10,2)
);


-- 4. Criar uma view
CREATE VIEW vw_carros_por_marca AS
SELECT marca, COUNT(*) AS total_carros
FROM carros
GROUP BY marca;


-- 5. Criar uma função
CREATE FUNCTION calcular_idade(data_nascimento DATE)
RETURNS INT AS $$
    SELECT AGE(CURRENT_DATE, data_nascimento);
$$ LANGUAGE SQL;


-- 6. Criar uma procedure
CREATE PROCEDURE inserir_cliente(nome TEXT, email TEXT)
LANGUAGE plpgsql AS
$$
BEGIN
    INSERT INTO clientes (nome, email) VALUES (nome, email);
END;
$$;


-- 7. Criar um índice
CREATE INDEX idx_pedidos_data ON pedidos (data_pedido);


-- 8. Criar um tipo de dado
CREATE TYPE endereco AS (
    rua VARCHAR(100),
    numero INTEGER,
    cidade VARCHAR(100)
);


-- 9. Criar um esquema
CREATE SCHEMA esquema_auxiliar;


-- 10. Criar uma extensão
CREATE EXTENSION postgis;
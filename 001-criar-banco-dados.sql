/* 
Nós já criamos o banco em nosso arquivo Dockerfile, mas caso não tivéssemos criado o comando
abaixo para criação

Vejamos casos de uso para o comando CREATE.
*/

-- NOTA: Conectar ao banco de dados recém-criado
\c db_almanaque


-- 1. Criando o database
CREATE DATABASE db_almanaque;


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
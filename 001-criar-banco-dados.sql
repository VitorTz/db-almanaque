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

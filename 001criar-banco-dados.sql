/*
Nós já criamos o banco em nosso arquivo Dockerfile, mas caso não tivéssemos criado o comando
abaixo para criação

PS: você pode encontrar projetos com o Design das palavras chaves (keywords sql) em maiúsculo.

aqui para facilitar a escrita farei em minúsculo.

o seguondo comando create é para criar tabelas

*/

create database db_almanaque;

-- Em muitos bancos de dados, se usa use nome-do-banco-de-dados
use db_almanaque;

create table carros (
    id serial primary key, 
    marca varchar(100),
    modelo varchar(100),
    ano varchar(100)
);
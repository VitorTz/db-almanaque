/*

    Vamos explorar mais o comando SELECT, para ler os dados de um banco de dados.

*/

-- 1. Ler todos os dados de uma tabela
SELECT * FROM nome_tabela;

-- 2. Ler dados de colunas em uma tabela
SELECT coluna1, coluna2 FROM nome_tabela;

-- 3. Ler dados em uma coluna com alias
SELECT nome AS funcionario, funcao AS cargo FROM nome_tabela;

-- 4. Ler dados com ordenação
SELECT * FROM carros ORDER BY ano DESC;

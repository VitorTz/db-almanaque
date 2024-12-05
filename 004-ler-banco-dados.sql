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

-- 5. Ler dados com WHERE
SELECT * FROM carros WHERE ano > 2020;

-- 6. Ler dados utilizando operadores
SELECT * FROM carros WHERE marca == 'Nissa' AND ano > 2020;
SELECT * FROM carros WHERE marca == 'Nissa' OR ano > 2020;
SELECT * FROM carros WHERE NOT vendido;

-- 7. Ler dados com LIKE (esse comando busca respostas que contenham os parametros informados)
SELECT * FROM carros WHERE marca LIKE 'Nissa';
SELECT * FROM carros WHERE marca LIKE '%issa';
SELECT * FROM carros WHERE marca LIKE 'Nissa%';
SELECT * FROM carros WHERE marca LIKE '%issa%';

-- 8. Ler dados com BETWEEN
SELECT * FROM carros WHERE ano BETWEEN 2010 AND 2020;

-- 9. Ler dados com IN
SELECT * FROM carros WHERE marca IN ('Nissa', 'Fiat', 'Ford');

-- 10. Ler dados com LIMIT
SELECT * FROM carros LIMIT 5;

-- 11. Ler dados com funções agregagadas
SELECT COUNT(*) FROM carros; -- Conta quantos registros tem
SELECT AVG(ano) FROM carros; -- Calcular a média do ano

-- 12. Ler dados com Subconsultas e funções agregadas
SELECT marca, COUNT(*) AS qtd_carros WHERE ano > (SELECT AVG(ano) FROM carros);

-- 13. Ler dados com Join
SELECT c.nome, m.nome AS modelo_nome
FROM carros c
JOIN modelos m ON c.modelo_id = m.id;
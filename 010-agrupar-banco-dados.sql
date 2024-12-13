/*
    Vamos agora ver o comando GROUP BY
    é muito comum usar GROUP BY com funções de agregação
*/


-- 1. Agrupar utilizando COUNT.
SELECT categoria, COUNT(*)
FROM produtos GROUP BY categoria;


-- 2. Agrupar utilizando AVG
SELECT categoria, AVG(preco)
FROM produtos GROUP BY categoria;


-- 3. Agrupar utilizando MIN
SELECT nome, MIN(nota)
FROM alunos GROUP BY nome;
/*
    Vamos explorar junção de tabelas com o comando JOIN
*/

-- 1. Fazendo a junção entre duas tabelas.
SELECT
    nome_produto
    nome_categoria
FROM produtos p
JOIN categorias c ON p.categoria_id = c.categoria_id;


-- 5. Fazendo a junção de todos os registros mesmo sem correspondência.
SELECT
    nome_funcionario,
    nome_departamento
FROM funcionarios f
FULL JOIN departamentos d ON f.departamento_id = d.departamento_id;

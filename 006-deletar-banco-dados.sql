/*
    Agora vamos deletar colunas e tabelas com o comando DELETE
    NOTA: altamente desaconselhado para ser usado sem o comando WHERE.

    Estrutura básica:
        DELETE * FROM tabela WHERE condição;
    O comando sem * também funciona

    Considere usar Transaction para isso.
    transações garantem uma consistência de dados.
*/

-- 1. Deletar tabela completa
DELETE * FROM alunos;
DELETE FROM alunos;


-- 2. Deletar coluna com condição WHERE (deixo sem WHERE)
DELETE alunos FROM materia WHERE nome = 'Física';
DELETE FROM materia WHERE nome = 'Física';


-- 3. Deletar com condionais
DELETE FROM pedidos
WHERE data_pedido < '2022-01-01' OR status_pedido = 'Cancelado';


-- 4. Deletar com JOIN
DELETE p FROM pedidos AS p
JOIN produtos AS prod ON p.produto_id = prod.id
WHERE prod.status_categoria = 'Descontinuado';

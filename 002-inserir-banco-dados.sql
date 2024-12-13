/*
    Comando INSERT TO
*/

-- 1. Inserir um único registro em uma tabela
INSERT INTO carros (nome, marca, modelo, vendido, ano)
VALUES ('Civic', 'Honda', 'Sedan', FALSE, 2019);


-- 2. Inserir múltiplos registros com valores explícitos
INSERT INTO carros (nome, marca, modelo, vendido, ano)
VALUES
    ('Civic', 'Honda', 'Sedan', FALSE, 2019),
    ('Gol', 'Volkswagen', 'Hatchback', TRUE, 2017),
    ('Sentra', 'Nissan', 'Sedan'. FALSE, 2022);


-- 3. Inserir dados de outra tabela
INSERT INTO carros_vendidos (nome, marca, vendido, ano)
SELECT nome, marca, vendido, ano FROM carros WHERE vendido = TRUE;


-- 4. Inserir dados de um subconsulta
INSERT INTO pedidos (cliente_id, produto_id, quantidade)
SELECT c.id, p.id, 10
FROM clientes c
JOIN produtos p ON c.id = p.cliente_id
WHERE p.categoria == "Eletrônicos";


-- 5. Inserir dados gerados de uma função
INSERT INTO logs_emprestimos (livro, usuario, data_emprestimo)
VALUES ('O Senhor dos Anéis', 'João Silva', NOW());


-- 6. Inserir dados a partir de um arquivo CSV (exemplo com psql)
\copy carros (nome, marca, modelo, vendido, ano) FROM 'carros.csv' CSV HEADER;


-- 7. Inserir dados a partir de um arquivo JSON (exemplo com psql)
\copy carros (nome, marca, modelo, vendido, ano) FROM 'carros.json' CSV HEADER;


-- 8. Inserir dados com valores padrão
INSERT INTO usuarios (nome, email) 
VALUES ('Novo usuario', 'novousuario@novoemail.com');


-- 9. Inserir dados gerados de uma sequência
CREATE SEQUENCE seq_pedidos;
INSERT INTO pedidos (id, cliente_id, produto_id, quantidade)
VALUES (nextval('seq_pedidos'), 1, 2, 5);
/*
    Agora vamos atualizar colunas e tabelas com o comando UPDATE
    NOTA: altamente desaconselhado para ser usado sem o comando WHERE.

    Estrutura básica:
        UPDATE nome_da_tabela
        SET coluna1 = novo_valor1, coluna2 = novo_valor2, ...
        WHERE condição;
*/


-- 1. Atualizando uma tabela
UPDATE jogadores SET nome_jogador = 'Lucas Moura';


-- 2. Atualizando uma coluna
UPDATE jogadores SET numero_camisa = 10 WHERE nome_jogador = 'Lucas Moura';


-- 3. Atualizando múltiplas colunas
UPDATE produtos 
SET desconto = preco * 0.2, preco_parcelado = preco * 0.8
WHERE categorias = 'Eletronicos';


-- 4. Atualizando colunas com Subconsultas
UPDATE produtos
SET status = 'Enviado'
WHERE id IN (SELECT id FROM pedidos WHERE data_envio < '2022-01-01');


-- 5. Atualizando colunas com JOIN
UPDATE pedidos AS p
JOIN clientes AS c ON p.cliente_id = c.id
SET p.status = 'Cancelado'
WHERE c.ativo = false;


-- 6. Atualizando com expressão
UPDATE pedidos AS p
SET preco = preco - (preco * 0.1)
WHERE categoria = 'Livros';


-- 7. Atualizando com função agregada
UPDATE usuarios SET data_atualizacao = NOW() WHERE id = 101;
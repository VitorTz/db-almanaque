/*
    Agora vamos atualizar colunas e tabelas com o comando UPDATE
    NOTA: altamente desaconselhado para ser usado sem o comando WHERE.
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


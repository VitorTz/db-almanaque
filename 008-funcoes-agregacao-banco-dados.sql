/*
    Aqui veremos funções de agregação úteis como:
    - AVG
    - COUNT
    - MAX
    - MIN
    - SUM
*/

-- 1. Comando AVG é usado para obter a média dos dados
SELECT AVG(preco) FROM produtos;
DELETE FROM produtos WHERE AVG(preco) > 30000;
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


-- 2. Comando COUNT retorna a quantidade de linhas
SELECT COUNT(id) FROM jogadores;
UPDATE jogadores SET campeao = TRUE WHERE COUNT(vitoria) > 10;


-- 3. Comando MAX retorna o maior valor
DELETE FROM jogadores WHERE MAX(vitoria) < 5;
UPDATE FROM carros SET estado = 'Semi novo' WHERE MAX(quilometragem) < 10000;


-- 4. Comando MIN retorna o menor valor
SELECT MIN(quilometragem) FROM carros;
UPDATE carros SET estado = 'usado' WHERE MIN(quilometragem) > 10000;


-- 5. Comando SUM retorna a soma dos valores
SELECT SUM(quilometragem) FROM carros;
UPDATE produto SET preco = preco * 0.9 WHERE SUM(preco) > 1000;



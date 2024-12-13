/*
    Vamos agora ver o comando GROUP BY
    é muito comum usar GROUP BY com funções de agregação
*/


-- 1. Agrupar utilizando COUNT.
SELECT categoria, COUNT(*)
FROM produtos GROUP BY categoria;
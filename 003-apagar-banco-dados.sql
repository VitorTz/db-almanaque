/*
    Exemplos do comando DROP
    **Cuidado ao usar DROP DATABASE:** Essa operação exclui todos os dados do banco de dados.
    Como é algo didático é apresentado todos os casos de uso PORÉM em um ambiene de produção
    é ALTAMENTE REVISAR O COMANDO, na maioria das vezes você irá utilizar na consulta o comando
    WHERE.
*/

-- 1. Dropar tabela
DROP TABLE nome_tabela;


-- 2. Dropar banco de dados
DROP DATABASE nome_banco_de_dados;


-- 3. Dropar view
DROP VIEW nome_view;


-- 4. Dropar function
DROP FUNCTION nome_funcao;


-- 5. Dropar procedure
DROP PROCEDURE nome_procedure;


-- 6. Dropar índice
DROP INDEX index_cliente_nome;


-- 7. Dropar esquema
DROP SCHEMA nome_esquema_auxiliar;


-- 8. Dropar um tipo de dado
DROP TYPE nome_tipo_de_dado;


-- 9. Dropar um trigger
DROP TRIGGER trg_atualizar_estoque ON produtos; 


-- 10. Dropar uma role
DROP ROLE usuario_leitura; 


-- 11. Dropar uma constraint
ALTER TABLE pedidos DROP CONSTRAINT chk_valor_total_positivo; 
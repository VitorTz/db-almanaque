/*

    Agora vamos ver como criar uma procedure.

    Procedure são úteis quando queremos "automatizar" uma tarefa,
    uma tarefa que executamos repetidas vezes como gerar um relatório por exemplo.
*/


-- 1. Procedimento para calcular o bonus de um departamento com SELECT
CREATE PROCEDURE calcular_bonus(departamento_id INTEGER)
AS
BEGIN
    SELECT AVG(salario) AS media_salarios
    FROM funcionarios
    WHERE departamento = departamento_id;
END;  

-- 1.2 Chamando procedimento
CALL calcular_bonus(2);



-- 2. Procedimento para calcular o bonus de um departamento com UPDATE
CREATE PROCEDURE atualizar_bonus(departamento_id INTEGER)
AS
BEGIN
    UPDATE departamentos
    SET bonus = (
        SELECT AVG(salario) AS media_salario
        FROM funcionarios WHERE departamento = departamento_id
    );
END;

-- 2.2 Chamando procedimento
CALL atualizar_bonus(2);


-- 3. Procedimento para excluir um funcionário
CREATE PROCEDURE demitir_funcionario(id INTEGER)
AS
BEGIN
    DELETE FROM funcionarios WHERE id = id;
END;

-- 3.2 Chamando procedimento
CALL demitir_funcionario(3)
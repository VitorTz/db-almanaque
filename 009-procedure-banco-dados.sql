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

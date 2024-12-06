/*
    Agora vamos deletar colunas e tabelas com o comando DELETE
    NOTA: altamente desaconselhado para ser usado sem o comando WHERE.

    Estrutura básica:
        DELETE * FROM tabela WHERE condição;
    O comando sem * também funciona
*/

-- 1. Deletando tabela completa
DELETE * FROM alunos;
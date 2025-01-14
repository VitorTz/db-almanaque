-- 1 Mostra os detalhes de cada tabela

-- Apenas os nomes
SELECT tablename 
FROM pg_tables 
WHERE schemaname = 'public';

-- Mais detalhes
SELECT 
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, ordinal_position;


-- 2 Mostra o tamanho de cada tabela
SELECT
    relname as "Table",
    pg_size_pretty(pg_total_relation_size(relid)) As "Size",
    pg_size_pretty(pg_total_relation_size(relid) - pg_relation_size(relid)) as "External Size"
FROM pg_catalog.pg_statio_user_tables
ORDER BY pg_total_relation_size(relid) DESC;
\prompt 'Введите имя таблицы: ' table_name
--SELECT table_catalog, table_schema, table_name, privilege_type, is_grantable FROM information_schema.role_table_grants WHERE grantee='user1' and table_schema='hr_poc' AND table_name =:'table_name';

   SELECT 
    n.nspname AS schema_name,
    c.relname AS table_name
FROM 
    pg_class c
JOIN 
    pg_namespace n ON n.oid = c.relnamespace
WHERE 
    c.relkind = 'r' 
    AND n.nspname NOT IN ('pg_catalog', 'information_schema')
    AND c.relname LIKE :'%table_name%'
ORDER BY 
    n.nspname, c.relname;

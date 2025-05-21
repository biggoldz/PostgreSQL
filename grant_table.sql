\prompt 'Введите имя таблицы: ' table_name
SELECT table_catalog, table_schema, table_name, privilege_type, is_grantable FROM information_schema.role_table_grants WHERE grantee='user1' and table_schema='hr_poc' AND table_name =:'table_name';

\prompt 'Введите имя учетной записи: ' user_name
\prompt 'Введите имя схемы данных: ' schema_name
SELECT table_catalog, table_schema, table_name, privilege_type, is_grantable FROM information_schema.role_table_grants WHERE grantee=:'user_name' and table_schema=:'schema_name';


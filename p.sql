\set var_value '\'' :my_param '\''
SELECT * from pg_file_settings where name :var_value AS parameter_value;
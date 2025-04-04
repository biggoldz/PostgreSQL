\prompt 'Введите имя параметра: ' param_name
SELECT * FROM pg_file_settings WHERE name = :'param_name';

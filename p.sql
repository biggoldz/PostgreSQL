-- Скрипт для поиска параметров конфигурации по начальным буквам
\prompt 'Введите начальные буквы имени параметра (можно с %): ' param_pattern
-- Если пользователь не ввел символ %, добавляем его автоматически
\set quoted_pattern '\'%' :'param_pattern' '%\''
-- Выполняем поиск с подстановкой шаблона
SELECT * FROM pg_file_settings WHERE name LIKE ':quoted_pattern' ORDER BY name;

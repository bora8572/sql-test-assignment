# sql_test-assignment
Решение тестового задания на позицию инженер данных.
### Инструменты
Использовал WSL с Ubuntu, Docker, Clickhouse, DBeaver, DBT и Git.
Команду для запуска Clickhouse взял на [Docker Hub](https://hub.docker.com/r/clickhouse/clickhouse-server):
`docker run -d -p 18123:8123 -p19000:9000 --name clickhouse-server --ulimit nofile=262144:262144 clickhouse/clickhouse-server`
Далее в DBeaver подключился к localhost:18123, импортировал файл de_clickhouse.sql, создал и заполнил таблицы.
### Написал запросы согласно условиям задач
Запросы лежат в [models](sql-test-assignment/sql_test_assignment/models):
- Задание №1: task1.sql;
- Задание №2: task2.sql, task2a.sql;
- Задание №3: task3.sql;
- Задание №4: task4.sql, task4a.sql.
В результирующей таблице Задания №2 заметил 'Клиентский сервис' и 'Клиентский  сервис'. Написал запрос task2a.sql, чтобы убрать лишние пробелы между словами.
Для Задания №4 предлагаю более короткий запрос task4a.sql. При этом названия месяцев будут на английском языке.
### DBT
Установил DBT с помощью команды `pip install dbt-clickhouse`, инициализировал проект `dbt init`, описал подключение к Clickhouse в `profiles.yml`.
Скопировал файлы с запросами в папку `models`, запустил DBT `dbt run`. В результате база пополнилась шестью Views.
### Выложил результат на GitHub
Создал репозиторий, закоммитил и запушил необходимые папки и файлы.

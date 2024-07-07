CREATE USER clickhouse_admin IDENTIFIED WITH sha256_password BY 'qwerty_12345';
GRANT CURRENT GRANTS ON *.* TO clickhouse_admin WITH GRANT OPTION;

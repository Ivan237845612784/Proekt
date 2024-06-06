DROP USER IF EXISTS 'admin_user'@'%';
DROP USER IF EXISTS 'table_user'@'%';
DROP USER IF EXISTS 'column_user_1'@'%';


CREATE USER 'admin_user'@'%' IDENTIFIED BY 'admin_pass';
CREATE USER 'table_user'@'%' IDENTIFIED BY 'table_pass';
CREATE USER 'column_user_1'@'%' IDENTIFIED BY 'column_pass';


DROP ROLE IF EXISTS 'db_admin';
DROP ROLE IF EXISTS 'table_manager';
DROP ROLE IF EXISTS 'column_user';


CREATE ROLE 'db_admin';
CREATE ROLE 'table_manager';
CREATE ROLE 'column_user';


GRANT ALL PRIVILEGES ON avtoka6ta.* TO 'db_admin';
GRANT SELECT, INSERT, UPDATE, DELETE ON avtoka6ta.* TO 'table_manager';
GRANT SELECT (name, email) ON avtoka6ta.Owners TO 'column_user';


GRANT 'db_admin' TO 'admin_user'@'%';
GRANT 'table_manager' TO 'table_user'@'%';
GRANT 'column_user' TO 'column_user_1'@'%';
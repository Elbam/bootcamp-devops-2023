CREATE DATABASE devopstravel;
CREATE USER 'codeuser'@'mariadb' IDENTIFIED BY 'codepass';
GRANT ALL PRIVILEGES ON *.* TO 'codeuser'@'mariadb';
FLUSH PRIVILEGES;
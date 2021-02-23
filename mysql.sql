CREATE USER 'mroot'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'mroot'@'localhost';
FLUSH PRIVILEGES;
ALTER USER 'mroot'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
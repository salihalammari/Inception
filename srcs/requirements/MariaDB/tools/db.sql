CREATE DATABASE $db_name;
ALTER USER 'root'@'localhost' IDENTIFIED BY '$db_root_passwd';
CREATE USER '$db_user'@'%' IDENTIFIED BY '$db_passwd';
GRANT ALL PRIVILEGES ON *.* TO '$db_user'@'%';
FLUSH PRIVILEGES;
EXIT
#!/bin/sh
set -e

# 确保初始化 SQL 目录存在
mkdir -p /docker-entrypoint-initdb.d

# 写入初始化 SQL
cat << EOF > /docker-entrypoint-initdb.d/init.sql
CREATE DATABASE IF NOT EXISTS ${DB_NAME} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';
EOF

# MariaDB to PID1，使用 mysql 用户启动
exec mariadbd --user=mysql --bind-address=0.0.0.0 --init-file=/docker-entrypoint-initdb.d/init.sql

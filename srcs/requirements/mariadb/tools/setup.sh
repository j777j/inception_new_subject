#!/bin/bash
set -e

# 确保目录存在
mkdir -p /docker-entrypoint-initdb.d

# 将 SQL 初始化内容写入文件
cat << EOF > /docker-entrypoint-initdb.d/init.sql
CREATE DATABASE IF NOT EXISTS ${DB_NAME} CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';
EOF

# 启动 MariaDB 并执行 init.sql
exec mariadbd --init-file=/docker-entrypoint-initdb.d/init.sql

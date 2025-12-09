#!/bin/bash
set -e

# initial
if [ ! -d "/var/lib/mysql/mysql" ]; then
    echo "[INFO] 初始化 MariaDB 資料庫..."
    mysqld --initialize-insecure --user=mysql
fi


mysqld --user=mysql --skip-networking &

# Wait
TIMEOUT=30
until mysqladmin ping --silent; do
    sleep 1
    TIMEOUT=$((TIMEOUT-1))
    if [ $TIMEOUT -le 0 ]; then
        echo "[ERROR] MariaDB 啟動超時"
        exit 1
    fi
done

# for database
mysql -u root <<-EOSQL
CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';
FLUSH PRIVILEGES;
EOSQL

# stop temporarily
mysqladmin -u root -p"${DB_ROOT_PASS}" shutdown

# Start as PID 1
exec mysqld --user=mysql

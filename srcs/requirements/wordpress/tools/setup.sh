#!/bin/bash
set -e
set -x

# 等待 mariadb 启动
until mysqladmin ping -h mariadb --silent; do
    sleep 1
done

# 下载 WordPress
if [ ! -f /var/www/html/wp-config.php ]; then
    wp core download --allow-root
fi

# 创建 wp-config.php
if [ ! -f /var/www/html/wp-config.php ]; then
    wp config create \
        --dbname=$DB_NAME \
        --dbuser=$DB_USER \
        --dbpass=$DB_PASS \
        --dbhost=mariadb \
        --allow-root
fi

# 安装 WordPress
if ! wp core is-installed --allow-root; then
    wp core install \
        --url=$DOMAIN_NAME \
        --title="Inception" \
        --admin_user=$WP_ADMIN_USER \
        --admin_password=$WP_ADMIN_PASS \
        --admin_email=$WP_ADMIN_EMAIL \
        --allow-root

    wp user create $WP_USER $WP_USER_EMAIL \
        --role=author \
        --user_pass=$WP_USER_PASS \
        --allow-root
fi

# 启动 php-fpm（使用系统默认命令）
exec php-fpm -F

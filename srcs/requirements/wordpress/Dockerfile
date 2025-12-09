FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    php php-fpm php-mysql curl default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

WORKDIR /var/www/html

EXPOSE 9000
ENTRYPOINT ["sh", "/usr/local/bin/setup.sh"]

FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# 创建 MariaDB 运行目录和初始化目录并赋权
RUN mkdir -p /var/run/mysqld /docker-entrypoint-initdb.d \
    && chown -R mysql:mysql /var/run/mysqld /var/lib/mysql /docker-entrypoint-initdb.d

COPY tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

VOLUME /var/lib/mysql
EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/setup.sh"]

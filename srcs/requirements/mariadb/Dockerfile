FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# 创建 MariaDB 运行目录并赋权
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

COPY tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# 指定資料卷
VOLUME /var/lib/mysql
EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/setup.sh"]

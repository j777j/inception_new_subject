FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

COPY tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

COPY conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306
ENTRYPOINT ["sh", "/usr/local/bin/setup.sh"]

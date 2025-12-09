FROM debian:bookworm

RUN apt-get update && apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

COPY tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# 指定資料卷
VOLUME /var/lib/mysql
EXPOSE 3306

# 使用修改後的 entrypoint
ENTRYPOINT ["/usr/local/bin/setup.sh"]

FROM kkldream/mcserver:java8

# MC Server
ENV MC_SERVER_VERSION=1.12.2-ic2
WORKDIR /root/server
COPY server .
VOLUME [ \
    "/root/server/world", \
    "/root/server/server.properties", \
    "/root/server/logs" ]
EXPOSE 25565

CMD ["sh", "./startup.sh"]
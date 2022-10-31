FROM ubuntu:18.04

# Tools
RUN apt update
RUN apt install -y nano net-tools iputils-ping screen wget

# Java 17
RUN wget https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-x64_bin.tar.gz && \
    tar zxvf jdk-17.0.4_linux-x64_bin.tar.gz && \
    rm jdk-17.0.4_linux-x64_bin.tar.gz && \
    echo "export JAVA_HOME=/jdk-17.0.4" >> ~/.bashrc && \
    echo "export PATH=$PATH:/jdk-17.0.4/bin" >> ~/.bashrc

# MC Server
ENV MC_SERVER_VERSION=1.12.2
WORKDIR /root/server
COPY server .
VOLUME [ \
    "/root/server/world", \
    "/root/server/server.properties", \
    "/root/server/logs" ]
EXPOSE 25565

CMD ["sh", "./startup.sh"]
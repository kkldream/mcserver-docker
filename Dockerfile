FROM ubuntu:18.04

RUN apt update

# SSH
RUN apt install -y openssh-server && \
    echo 'root:password' | chpasswd && \
    echo "Port 22" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
EXPOSE 22

# Java 1.8.0_301
ADD jdk-8u301-linux-x64.tar.gz .
RUN echo "export JAVA_HOME=/jdk1.8.0_301" >> ~/.bashrc && \
    echo "export PATH=$PATH:/jdk1.8.0_301/bin" >> ~/.bashrc

# Tools
RUN apt install -y nano net-tools iputils-ping screen

# CAB
COPY server /root/server
VOLUME [ \
    "/root/server/world", \
    "/root/server/server.properties", \
    "/root/server/logs", \
    "/root/server/backups" \
]
EXPOSE 25565

# Startup
COPY ./startup.sh /root/startup.sh
WORKDIR /root/server
CMD ["sh", "/root/startup.sh"]
FROM ubuntu:18.04

RUN apt update

# SSH
RUN apt install -y openssh-server && \
    echo 'root:password' | chpasswd && \
    echo "Port 22" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
EXPOSE 22

# Java 8
RUN apt install -y openjdk-8-jdk

# Tools
RUN apt install -y nano net-tools iputils-ping screen

# Startup
COPY ./startup.sh /root/startup.sh
CMD ["sh", "/root/startup.sh"]
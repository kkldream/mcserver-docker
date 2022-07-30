FROM ubuntu:18.04

RUN apt update

# SSH
RUN apt install -y openssh-server && \
    echo 'root:password' | chpasswd && \
    echo "Port 22" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
EXPOSE 22

# Java 17
RUN wget https://download.oracle.com/java/17/archive/jdk-17.0.4_linux-x64_bin.tar.gz && \
    tar zxvf jdk-17.0.4_linux-x64_bin.tar.gz && \
    rm jdk-17.0.4_linux-x64_bin.tar.gz && \
    echo "export JAVA_HOME=/jdk-17.0.4" >> ~/.bashrc && \
    echo "export PATH=$PATH:/jdk-17.0.4/bin" >> ~/.bashrc

# Tools
RUN apt install -y nano net-tools iputils-ping screen

# Startup
COPY ./startup.sh /root/startup.sh
CMD ["sh", "/root/startup.sh"]
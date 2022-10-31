FROM ubuntu:18.04

# Tools
RUN apt update
RUN apt install -y nano net-tools iputils-ping screen wget

# Java 8
ADD jdk-8u351-linux-x64.tar.gz .
RUN echo "export JAVA_HOME=/jdk1.8.0_351" >> ~/.bashrc && \
    echo "export PATH=$PATH:/jdk1.8.0_351/bin" >> ~/.bashrc

CMD ["bash"]
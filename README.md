# Ubuntu 18.04 + Java 8

### 環境

* Ubuntu 18.04
* Java 1.8.0_351

### 執行容器

```sh
docker run --rm -it --name java8 kkldream/mcserver:java8
```

### 自行編譯

先下載jdk8包：[https://www.oracle.com/java/technologies/downloads/](https://www.oracle.com/java/technologies/downloads/#:~:text=linux%2Dx64.rpm-,x64%20Compressed%20Archive,jdk%2D8u351%2Dlinux%2Dx64.tar.gz,-Documentation%20Download)

```cmd
docker build -t kkldream/mcserver:java8 .
```
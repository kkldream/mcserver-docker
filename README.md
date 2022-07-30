# Ubuntu 18.04 + Java 8

## 環境

* Ubuntu 18.04
* Java 1.8.0_312

```log
root@3140ed9d8c23:/# java -version
openjdk version "1.8.0_312"
OpenJDK Runtime Environment (build 1.8.0_312-8u312-b07-0ubuntu1~18.04-b07)
OpenJDK 64-Bit Server VM (build 25.312-b07, mixed mode)
```

## 執行容器

```sh
docker run --rm --name java8 -it -p 20022:22 kkldream/mcserver:java8
```

## 進入容器

從終端機:  
```sh
docker exec -it java8 bash
```

從SSH連入:    
* 帳號: root
* 密碼: password

## 自行編譯

```cmd
docker build -t kkldream/mcserver:java8 .
```
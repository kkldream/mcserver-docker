# Ubuntu 18.04 + Java 17

## 環境

* Ubuntu 18.04
* Java 17.0.4

```log
root@c7169d525d6f:/# java -version
java version "17.0.4" 2022-07-19 LTS
Java(TM) SE Runtime Environment (build 17.0.4+11-LTS-179)
Java HotSpot(TM) 64-Bit Server VM (build 17.0.4+11-LTS-179, mixed mode, sharing)
```

## 執行容器

```sh
docker run --rm --name java17 -it -p 20022:22 kkldream/mcserver:java17
```

## 進入容器

從終端機:  
```sh
docker exec -it java17 bash
```


從SSH連入:    
* 帳號: root
* 密碼: password

## 自行編譯

```cmd
docker build -t kkldream/mcserver:java17 .
```
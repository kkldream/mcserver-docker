# 1.19.2 Server

## 執行容器

需再專案目錄下執行

Windows:  
```cmd
docker run --name mc -d -it -p 20022:22 -p 25565:25565 ^
    -v %cd%/data/1.19.2/world:/root/server/world ^
    -v %cd%/data/1.19.2/server.properties:/root/server/server.properties ^
    -v %cd%/data/1.19.2/logs:/root/server/logs ^
    kkldream/mcserver:1.19.2
```

Linux:  
```sh
docker run --name mc -d -it -p 20022:22 -p 25565:25565 \
    -v $PWD/data/1.19.2/world:/root/server/world \
    -v $PWD/data/1.19.2/server.properties:/root/server/server.properties \
    -v $PWD/data/1.19.2/logs:/root/server/logs \
    kkldream/mcserver:1.19.2
```

路徑說明:

* /root/server/world : 世界地圖資源
* /root/server/server.properties : 伺服器設定檔
* /root/server/logs : 伺服器日誌

## 進入容器

從終端機:  
```sh
docker exec -it mc screen -r
```

從SSH:  
```sh
screen -r
```

退出:  
按`Ctrl+C`會直接關閉Server，需退出直接關閉終端或按`Ctrl+A+D`再關閉終端。

從SSH連入:    
* 帳號: root
* 密碼: password

## 自行編譯

```cmd
docker build -t kkldream/mcserver:1.19.2 .
```

## 錯誤訊息

> Failed to read chunk [X, Z] java.lang.IllegalArgumentException: Negative position #1247

此問題應該是Windows上的Docker環境Volume的映射操作有Bug，目前無解決方法，等Docker官方修復。

參考：https://githubhot.com/repo/itzg/docker-minecraft-server/issues/1247
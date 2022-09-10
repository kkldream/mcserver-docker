# Create: Above and Beyond v1.3

整合包介紹：https://www.mcmod.cn/modpack/312.html

## 執行容器

需再專案目錄下執行

Windows:  
```cmd
docker run --name cab -d -it -p 20065:22 -p 25565:25565 ^
    -v %cd%/data/cab/world:/root/server/world ^
    -v %cd%/data/cab/server.properties:/root/server/server.properties ^
    -v %cd%/data/cab/logs:/root/server/logs ^
    -v %cd%/data/cab/backups:/root/server/backups ^
    kkldream/mcserver:cab1.3-mods
```

Linux:  
```sh
docker run --name cab -d -it -p 20065:22 -p 25565:25565 \
    -v $PWD/data/cab/world:/root/server/world \
    -v $PWD/data/cab/server.properties:/root/server/server.properties \
    -v $PWD/data/cab/logs:/root/server/logs \
    -v $PWD/data/cab/backups:/root/server/backups \
    kkldream/mcserver:cab1.3-mods
```

路徑說明:

* /root/server/world : 世界地圖資源
* /root/server/backups : 世界地圖資源備份
* /root/server/server.properties : 伺服器設定檔
* /root/server/logs : 伺服器日誌

## 進入容器

從終端機:  
```sh
docker exec -it cab screen -r
```

從SSH:  
```sh
screen -r
```

退出:  
按`Ctrl+C`會直接關閉Server，需退出直接關閉終端或按`Ctrl+A+D`再關閉終端。

## 自行編譯

先下載`jdk-8u301-linux-x64.tar.gz`至根目錄：  
[Java SE Development Kit 8u301 Download](https://www.oracle.com/tw/java/technologies/javase/javase8u211-later-archive-downloads.html#:~:text=8u301%2Dlinux%2Dx64.rpm-,Linux%20x64%20Compressed%20Archive,jdk%2D8u301%2Dlinux%2Dx64.tar.gz,-macOS%20x64%20DMG%20Installer)

```cmd
docker build -t kkldream/mcserver:cab1.3-mods .
```
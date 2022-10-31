# MC Server

### Usage：

```sh
./run.sh [VERSION] [PORT]
```

### Example：

```sh
./run.sh 1.12.2 25565
```

### Exec：

```sh
docker exec -it [NAME] screen -r
```

### Remove：

```sh
docker rm -vf [NAME]
```

### Docker Hub：

https://hub.docker.com/r/kkldream/mcserver

### Path：

* `/root/server/world`：世界地圖資源
* `/root/server/server.properties`：伺服器設定檔
* `/root/server/logs`：伺服器日誌
/etc/init.d/ssh restart &&
screen -dm /jdk-17.0.4/bin/java -Xmx8G -Xms8G -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=0 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:+UseG1GC -jar server.jar nogui &&
bash

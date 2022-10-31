if [ $# != 2 ]
then
    echo "./run.sh" requires at least 2 argument.
    echo Usage: ./run.sh [VERSION] [PORT]
    echo Example: \"./run.sh 1.12.2 25565\"
    exit
fi
version=$1
port=$2
echo version = $version
echo port = $port
mkdir -p data/$version/world data/$version/logs
cp data/server.properties data/$version/server.properties
docker run \
    -itd \
    -v $(pwd)/data/$version/world:/root/server/world \
    -v $(pwd)/data/$version/server.properties:/root/server/server.properties \
    -v $(pwd)/data/$version/logs:/root/server/logs \
    -p $port:25565 \
    --name mc-$version \
    kkldream/mcserver:$version

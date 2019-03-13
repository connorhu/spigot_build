# spigot_build docker commands

```
docker rmi spigot_build
docker build -t spigot_build spigot_build/
docker build --no-cache -t spigot_build spigot_build/

docker rm spigot_build_latest
docker run --volume /server/docker/spigot_builds:/spigot/build --name spigot_build_latest spigot_build
docker start spigot_build_latest
```

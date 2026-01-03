# mc-exec
A simple container to execute a minecraft server.jar file<br>
## How it works
it's essentially is an alpine linux container with openjdk installed and runs the command to execute the minecraft server. <br>
It targets the server.jar file located in the /mc folder.
```
podman run -itd -v /path-to-server-files:.mc -e MEMORY=2G -p 25565:25565 mc-exec:alpine-3.23.2-jdk21
```
The env `MEMORY` is to allocate the ammount of maximum amount of ram

[Check the compose file](container-compose.yaml)
# IOT-Server
Start a mini PC that can act as a home centralized IOT-server with different middleware functionalities
Based on Docker containers 
## Features
- MQTT Mosquitto
- Portainer 
- some EspHome scripts for devices
- web-socket server to Redis
- Redis server
- UDP server to Redis
- Zenoh Router ( the ultimate endgame ... hopefully )
- SMA reader , forward to MQTT
- Home Assistant
## Zenoh Router
- support multicast discovery 
- support udp/tcp
- support multicast peers with predefined buffer size
- exposed outside via HTTP / TCP
# Deployment
- Install Docker 
```
get-docker.sh
```
- Deploy portainer
```
./portainer.sh
./redis.sh
./sma_reader.sh
./mqtt.sh
```

# Zenoh mqtt bridge
https://github.com/eclipse-zenoh/zenoh-plugin-mqtt

docker run --init -p 1883:1883 eclipse/zenoh-bridge-mqtt
https://github.com/eclipse-zenoh/zenoh-plugin-mqtt/blob/main/DEFAULT_CONFIG.json5



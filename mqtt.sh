docker run --network host --name mosquitto -it -p 1883:1883 -p 9001:9001 -v ${PWD}/mosquitto:/mosquitto eclipse-mosquitto


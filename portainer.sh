docker run --network host --name portainer -d -p 9443:9443 --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/data/portainer:/data portainer/portainer-ce:latest


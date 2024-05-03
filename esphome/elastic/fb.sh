docker run -d \
  --name=filebeat \
  --net elastic \
  --user=root \
  --volume="$(pwd)/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro" \
  --volume="/var/lib/docker/containers:/var/lib/docker/containers:ro" \
  --volume="/var/run/docker.sock:/var/run/docker.sock:ro" \
  --volume="registry:/usr/share/filebeat/data:rw" \
  docker.elastic.co/beats/filebeat:8.12.1 filebeat -e --strict.perms=false 

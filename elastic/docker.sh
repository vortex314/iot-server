✅ Elasticsearch security features have been automatically configured!
✅ Authentication is enabled and cluster connections are encrypted.

ℹ  Password for the elastic user (reset with `bin/elasticsearch-reset-password -u elastic`):
  B2f+echvuXIct0cmiTEh

ℹ  HTTP CA certificate SHA-256 fingerprint:
  c259e3a1d31b13adff59bf15da13645af9da09548d19f478029d11d46c30a0c6

ℹ  Configure Kibana to use this cluster:
• Run Kibana and click the configuration link in the terminal when Kibana starts.
• Copy the following enrollment token and paste it into Kibana in your browser (valid for the next 30 minutes):
  eyJ2ZXIiOiI4LjEyLjEiLCJhZHIiOlsiMTcyLjE5LjAuMjo5MjAwIl0sImZnciI6ImMyNTllM2ExZDMxYjEzYWRmZjU5YmYxNWRhMTM2NDVhZjlkYTA5NTQ4ZDE5ZjQ3ODAyOWQxMWQ0NmMzMGEwYzYiLCJrZXkiOiJTX2lScVkwQng5SHQ4UmxSZ193VzpIRGUxTWxUSVNzeTl2RmRwMElyY1F3In0=

ℹ Configure other nodes to join this cluster:
• Copy the following enrollment token and start new Elasticsearch nodes with `bin/elasticsearch --enrollment-token <token>` (valid for the next 30 minutes):
  eyJ2ZXIiOiI4LjEyLjEiLCJhZHIiOlsiMTcyLjE5LjAuMjo5MjAwIl0sImZnciI6ImMyNTllM2ExZDMxYjEzYWRmZjU5YmYxNWRhMTM2NDVhZjlkYTA5NTQ4ZDE5ZjQ3ODAyOWQxMWQ0NmMzMGEwYzYiLCJrZXkiOiJTdmlScVkwQng5SHQ4UmxSZ193VzoxT2xqZkFxTlJSdU5RX2tzQ3BCZHVBIn0=

  If you're running in Docker, copy the enrollment token and run:
  `docker run -e "ENROLLMENT_TOKEN=<token>" docker.elastic.co/elasticsearch/elasticsearch:8.12.1`
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

https://www.elastic.co/guide/en/elasticsearch/reference/current/run-elasticsearch-locally.html#_start_kibana


docker network create elastic
docker pull docker.elastic.co/elasticsearch/elasticsearch:8.12.1
docker run --name elasticsearch --net elastic -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -t docker.elastic.co/elasticsearch/elasticsearch:8.12.1

docker pull docker.elastic.co/kibana/kibana:8.12.1
docker run --name kibana --net elastic -p 5601:5601 docker.elastic.co/kibana/kibana:8.12.1



log in kibana with : elastic / B2f+echvuXIct0cmiTEh

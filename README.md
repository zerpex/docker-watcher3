# docker-watcher3

docker run -d \
  --name watcher3 \
  -v /watcher3/conf:/watcher3/userdata \
  -v /watcher3/plugins:/watcher3/plugins \
  -p 8080:80 \
  zerpex/watcher3

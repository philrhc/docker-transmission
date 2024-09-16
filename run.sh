sudo rm -rf /var/tmp/docker_transmission_mount/data;
sudo rm -rf /var/tmp/docker_transmission_mount/downloads;

docker run -d \
  --name=transmission \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -e TRANSMISSION_WEB_HOME= `#optional` \
  -e USER= `#optional` \
  -e PASS= `#optional` \
  -e WHITELIST= `#optional` \
  -e PEERPORT= `#optional` \
  -e HOST_WHITELIST= `#optional` \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v /var/tmp/docker_transmission_mount/data:/config \
  -v /var/tmp/docker_transmission_mount/downloads:/downloads \
  -v /var/tmp/docker_transmission_mount/watch:/watch \
  --restart unless-stopped \
  transmission:latest
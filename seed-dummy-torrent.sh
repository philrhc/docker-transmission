echo "hello cluster" >> /var/tmp/docker_transmission_mount/downloads/complete/hello-world.txt;
transmission-create /var/tmp/docker_transmission_mount/downloads/complete/hello-world.txt
transmission-remote localhost -a /var/tmp/docker_transmission_mount/downloads/complete/hello-world.txt.torrent
transmission-show -m /var/tmp/docker_transmission_mount/downloads/complete/hello-world.txt.torrent
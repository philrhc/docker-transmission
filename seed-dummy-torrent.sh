echo "hello cluster" >> /var/tmp/docker_transmission_mount/downloads/complete/hello-world.txt;
transmission-create hello-world.txt
transmission-remote localhost -a ./hello-world.txt.torrent
git pull;
docker stop transmission;
docker rm transmission;
docker build -t transmission .;
# /bin/bash

# variables
DOCKER_COMPOSE=/opt/bin/docker-compose

# install docker-compose
if [ ! -f $DOCKER_COMPOSE ]; then
  sudo wget -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m`
  sudo mv docker-compose-`uname -s`-`uname -m` $DOCKER_COMPOSE
  sudo chmod +x $DOCKER_COMPOSE
fi

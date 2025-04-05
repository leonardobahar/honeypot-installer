#!/bin/sh

echo "Have you changed the default sshd port from 22 to something else? (y/n)"
read answer

if [ "$answer" != "y" ] && [ "$answer" != "Y" ]; then
  echo "Please change your SSH port from 22 to something else before running this script to avoid conflict with Cowrie."
  exit 1
fi

docker pull cowrie/cowrie:latest
docker volume create cowrie-var
docker volume create cowrie-etc
docker run -d --name cowrie -p 22:2222 -p 23:2223 -v cowrie-etc:/cowrie/cowrie-git/etc -v cowrie-var:/cowrie/cowrie-git/var --cap-drop=ALL --read-only --restart unless-stopped cowrie/cowrie:latest

cp /var/lib/docker/volumes/cowrie-etc/_data/cowrie.cfg.dist /var/lib/docker/volumes/cowrie-etc/_data/cowrie.cfg

echo "======================================="
echo "VERIFY INSTALLATION BY RUNNING docker logs -f cowrie \nIF YOUR INSTALLATION IS SUCCESSFUL, UPDATE CONFIGURATIONS IN /var/lib/docker/volumes/cowrie-etc/_data/cowrie.cfg"
echo "======================================="

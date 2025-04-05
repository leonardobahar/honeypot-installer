#!/bin/sh
docker pull honeytrap/honeytrap:latest
docker run -d -p 22:8022 -p 23:8023 -p 5900:5900 -p 8080:8080 --name honeytrap honeytrap/honeytrap:latest
docker cp ./honeytrap_config.toml honeytrap:/config/config.toml
docker restart honeytrap
echo "===================="
echo "Logs are available on /var/lib/docker/containers/<CONTAINER_NAME>/<CONTAINER_NAME.log>"
echo "===================="

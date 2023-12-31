#!/bin/bash

echo"cAdvisor en docker"

#cAdvisor

sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:ro \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --publish=8181:8181 \
  --detach=true \
  --name=cadvisor \
  gcr.io/google-containers/cadvisor:latest
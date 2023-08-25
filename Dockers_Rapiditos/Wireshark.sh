#!/bin/bash

sudo docker run -d \
  --name=wireshark \
  --net=host \
  --cap-add=NET_ADMIN \
  --security-opt seccomp=unconfined `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3000:3000 `#optional` \
  -p 3001:3001 `#optional` \
  -v /path/to/config:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/wireshark:latest
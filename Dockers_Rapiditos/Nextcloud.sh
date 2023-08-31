#!/bin/bash

sudo docker run -d \
  --name=nextcloud \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 443:443 \
  -v /path/to/appdata:/config \
  -v /path/to/data:/data \
  --restart unless-stopped \
  lscr.io/linuxserver/nextcloud:latest
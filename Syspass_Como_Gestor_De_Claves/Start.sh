#!/bin/bash

echo "Creando red syspass-net"
docker network create syspass-net
sleep 3
echo "creando volumen syspass-config"
docker volume create syspass-config
sleep 3
echo "creando volumen syspass-backup"
docker volume create syspass-backup 
sleep 3
echo "creando volumen syspass-db"
docker volume create syspass-db
echo "Run docker compose"
sleep 3
docker-compose -f syspass.yml up -d
#!/bin/bash

echo ""
echo "Control de Servicios Activos, Status"
echo ""
sleep 3
echo ""
service tor status
echo ""
sleep 2
echo ""
service ufw status
echo ""
sleep 2
echo ""
service nginx status
echo ""
sleep 2
echo ""
service openvpn status
echo ""
sleep 2
echo ""
service mysql status
echo ""
service apache2 status
sleep 2
echo ""
service nfs status
echo ""
service cron status
echo ""
service ntp status
echo ""
service ssh status
echo ""
sleep 2
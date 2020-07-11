#!/usr/bin/bash

# Parada de servicios ordenada

sudo systemctl stop httpd
sleep 1
sudo systemctl stop php-fpm
sleep 1
sudo systemctl stop mariadb
sleep 1
sudo systemctl stop redis
sleep 1


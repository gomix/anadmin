#!/usr/bin/bash

# Parada de servicios ordenada

sudo systemctl stop httpd
sudo systemctl stop php-fpm
sudo systemctl stop mariadb
sudo systemctl stop redis


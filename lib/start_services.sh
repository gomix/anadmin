#!/usr/bin/bash

# Arranque de servicios ordenado

sudo systemctl start redis
sudo systemctl start mariadb
sudo systemctl start php-fpm
sudo systemctl start httpd

#!/usr/bin/bash
source lib/common_fns.sh

# Arranque de servicios ordenado
section_header "Start Services (begin)"
start_service "redis"
start_service "mariadb"
start_service "php-fpm"
start_service "httpd"
section_header "Start Services (end)"

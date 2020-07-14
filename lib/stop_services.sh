#!/usr/bin/bash
source lib/common_fns.sh

# Parada de servicios ordenada
section_header "Stop Services (begin)"
stop_service "httpd"
stop_service "php-fpm"
stop_service "mariadb"
stop_service "redis"
section_header "Stop Services (end)"

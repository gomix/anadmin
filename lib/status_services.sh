#!/usr/bin/bash

source lib/common_fns.sh

section_header "Services Status Check"

# Lista Status de servicios ordenada
echo -n  "Apache status: "
systemctl is-active httpd
echo -n "PHP-FPM status: "
systemctl is-active php-fpm
echo -n "MariaDB status: "
systemctl is-active mariadb
echo -n "Redis status: "
systemctl is-active redis

section_footer 

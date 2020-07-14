#!/usr/bin/bash

source lib/common_fns.sh

# Puesta de NextCloud en modo servicio 
nc_on_service "nextcloud"
$occ maintenance:mode --off
section_footer

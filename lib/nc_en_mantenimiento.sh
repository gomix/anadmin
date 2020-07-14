#!/usr/bin/bash

source lib/common_fns.sh

# Puesta de NextCloud en modo mantenimiento
# TODO: no se puede ejecutar si los servicios 
# estan detenidos (apache/php.. confirmar)
nc_on_maintenance "nextcloud"
$occ maintenance:mode --on
section_footer

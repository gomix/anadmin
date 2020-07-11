#!/usr/bin/bash
#
# Uso: sh update_nc_app.sh deck

occ='sudo -u apache php /var/www/nextcloud/occ'

# Actualización de App NextCloud
echo "######## Actualización de App NextCloud #############"
$occ app:update $1

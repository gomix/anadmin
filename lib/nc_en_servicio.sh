#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

source lib/common_fns.sh

# Puesta de NextCloud en modo servicio 
nc_on_service "nextcloud"
occ maintenance:mode --off
section_footer

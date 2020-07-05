#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

source lib/common_fns.sh

# Puesta de NextCloud en modo mantenimiento
nc_on_maintenance "nextcloud"
occ maintenance:mode --on
section_footer

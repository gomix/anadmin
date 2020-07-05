#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

# Verificar salud del sistema

# NextCloud
echo "######## app:check-code ######"
occ app:check-code

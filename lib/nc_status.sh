#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

source lib/common_fns.sh

section_header "NextCloud Status"

# Consulta de Estado General de NextCloud
echo # Consulta de Estado General de NextCloud
occ status --output=json_pretty

section_footer 

#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

source lib/common_fns.sh

# Verificar actualizaciones disponibles 

# Sistema operativo
section_header "OS Updates Check"

updates=$(sudo dnf check-update)

if [ $? -ne 0 ];
then
  updates_available "OS" "$updates"
else
  no_updates_available "OS"
fi
section_footer 

# NextCloud
section_header "NextCloud Updates Check"
occ update:check > /dev/null
if [ $? -ne 0 ];
then
  updates_available "NextCloud" "$updates"
else
  no_updates_available "NextCloud"
fi
section_footer 

#!/usr/bin/bash

source lib/common_fns.sh

# Verificar actualizaciones disponibles 

# Sistema operativo
section_header "OS Updates Check (begin)"
updates=$(sudo dnf check-update)

if [ $? -ne 0 ];
then
  updates_available "OS" "$updates"
else
  no_updates_available "OS"
fi
section_footer "OS Updates Check (end)"

# NextCloud
section_header "NextCloud Updates Check (begin)"
$occ update:check > /dev/null
if [ $? -ne 0 ];
then
  updates_available "NextCloud" "$updates"
else
  no_updates_available "NextCloud"
fi
section_footer "NextCloud Updates Check (end)"

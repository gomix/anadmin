#!/usr/bin/bash

source lib/common_fns.sh

# Actualizar Sistema operativo
section_header "Updating OS"
sudo dnf update
# TODO:
# 1. Puede fallar! Tomar en consideración a la primera ocurrencia
# 2. Requiere interactividad/considerar pasar -y
section_footer 

# Estimar si es necesario reiniciar el sistema operativo
section_header "OS needs reboot"
sudo dnf needs-restarting -r
section_footer 

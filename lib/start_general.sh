#!/usr/bin/bash
source lib/common_fns.sh

# Start NextCloud and related services

section_header "General Start (begin)"

# Start all backend components in order
lib/start_services.sh

# Status all backend components in order
#lib/status_services.sh

# Just sleep 
sleep 5

# Put NextCloud in service
lib/nc_en_servicio.sh

section_footer "General Start (end)"

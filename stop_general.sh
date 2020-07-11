#!/usr/bin/bash
#
# Stop NextCloud and related services
# in order. Tipically as a previous step
# for stopping or rebooting  the server

# Put NextCloud in maintenance mode
sh lib/nc_en_mantenimiento.sh

# Just sleep 
sleep 5

# Stop all backend components in order
sh lib/stop_services.sh

# Status all backend components in order
sh lib/status_services.sh

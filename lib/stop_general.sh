#!/usr/bin/bash
#
# Stop NextCloud and related services
# in order. Tipically as a previous step
# for stopping, rebooting, updating the server

# Put NextCloud in maintenance mode
lib/nc_en_mantenimiento.sh

# Just sleep 
sleep 5

# Stop all backend components in order
lib/stop_services.sh

# Status all backend components in order
lib/status_services.sh

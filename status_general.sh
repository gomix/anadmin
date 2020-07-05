#!/usr/bin/bash

# Check NextCloud Status
sh lib/nc_status.sh

# Check Updates
sh lib/updates_check.sh

# Check SSL/TLS HTTP Certificates
sh lib/status_letsencrypt.sh

# Check Services Status
sh lib/status_services.sh

# Toma de Respaldos
# sh lib/take_backups.sh

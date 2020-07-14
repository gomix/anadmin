#!/usr/bin/bash
source lib/common_fns.sh

section_header "General Status (begin)"

# Check NextCloud Status
lib/nc_status.sh

# Check Updates
lib/updates_check.sh

# Check SSL/TLS HTTP Certificates
lib/status_letsencrypt.sh

# Check Services Status
lib/status_services.sh

section_footer "General Status (end)"

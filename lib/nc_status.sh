#!/usr/bin/bash
source lib/common_fns.sh

# Consulta de Estado General de NextCloud
section_header "NextCloud Status (begin)"
echo # Consulta de Estado General de NextCloud
$occ status --output=json_pretty
section_footer "NextCloud Status (end)"

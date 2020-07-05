#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

occ user:delete $1

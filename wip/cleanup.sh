#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

# Limpieza

# Sistema operativo
#echo "######## Actualizaciones del Sistema Operativo ######"
#sudo dnf check-update

# NextCloud
echo "######## files:cleanup #########"
occ files:cleanup
echo "######## trashbin:cleanup ######"
occ trashbin:cleanup --all-users  
echo "######## mail:clean-up ######################"
occ mail:clean-up 
echo "######## sharing:cleanup-remote-storages ####"
occ sharing:cleanup-remote-storages 
echo "######## versions:cleanup ###################"
occ versions:cleanup


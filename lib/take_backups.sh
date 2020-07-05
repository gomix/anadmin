#!/usr/bin/bash
#
# Toma de respaldo simple con rsync

source lib/common_fns.sh

section_header "Backups (BEGIN)"

target=cloud@aprender.anaj.org.ve
# Llaves públicas ssh de root y cloud 
# copiadas previamente a destino para 
# autenticación
#
# TODO
# 1. timestamp: Esta marca de tiempo debería estar acorde 
#    con la hora del servidor a respaldar, hay que tomar 
#    definir criterios
timestamp=$(date +%Y%m%d%H)  
remote_dir=/backups/virtual.anaj.org.ve/$timestamp

# Hay que hacerlo en modo mantenimiento
sh lib/nc_en_mantenimiento.sh

# Directorios  (fs)
backup_start_header "NextCloud Directories (fs)"
backup_dir "/var/www/nextcloud/config"
backup_dir "/var/www/nextcloud/themes"
backup_dir "/var/www/data"
backup_finished_header 

# Archivos y Directorios de Configuración  (fs)
backup_start_header "OS Configuration (/etc)"
backup_dir "/etc"
backup_finished_header 

# Base de Datos
backup_start_header "Database (mysql)"
pushd "/tmp" > /dev/null
db_bu_tmp=$(mktemp nextcloud-sqlbkp-XXX.sql)
dbname="nextcloud"
dbhost="localhost"
dbuser="nextcloud"
dbpassword="nc49516371"
mysqldump --single-transaction -h $dbhost -u $dbuser -p$dbpassword $dbname > $db_bu_tmp
ssh $target mkdir ~$remote_dir/db  2> /dev/null
scp $db_bu_tmp $target:~$remote_dir/db/nextcloud-sqlbkp.sql 
rm  -f $db_bu_tmp
popd > /dev/null
backup_finished_header 

# Entrada en servicio nuevamente
sh lib/nc_en_servicio.sh

section_footer "Backups (END)"

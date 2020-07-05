#!/usr/bin/bash
alias occ='sudo -u apache php /var/www/nextcloud/occ'

# Limpieza

# Sistema operativo
#echo "######## Actualizaciones del Sistema Operativo ######"
#sudo dnf check-update

occ app:list --output=json_pretty | jq 'keys'

mapfile -t arr $(occ app:list --output=json_pretty | jq 'keys')

echo $mapfile
exit
occ integrity:check-core
occ integrity:check-app photos
accessibility
activity
announcementcenter
bruteforcesettings
calendar
cloud_federation_api
comments
contacts
dav
deck
documentserver_community
drawio
epubreader
federatedfilesharing
files
files_mindmap
files_pdfviewer
files_rightclick
files_sharing
files_trashbin
files_versions
files_videoplayer
groupfolders
logreader
lookup_server_connector
mail
nextcloud_announcements
notifications
oauth2
onlyoffice
password_policy
photos
privacy
provisioning_api
recommendations
serverinfo
settings
sharebymail
side_menu
spreed
support
survey_client
systemtags
text
theming
twofactor_backupcodes
updatenotification
viewer
workflowengine

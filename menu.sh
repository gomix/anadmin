#!/usr/bin/bash

# Variables
##declare -a vms=("DGSSTAP01_RH8" "IGSGDAP01_RH8" "IGSSTAP01_RH8" )

# Functions
function show_menu {
  PS3='Please select your choice: '
  options=("Global Status"\
           "General Start"\
           "General Stop"\
           "Make Backups"\
           "Update OS"\
           "NextCloud Maintenance Mode Enable"\
           "NextCloud Maintenance Mode Disable"\
           "Services Status"\
           "Services Start"\
           "Services Stop"\
           "Quit"\
  )
  
  select option in "${options[@]}"
  do
    echo $option
    break
  done
}

# Includes

while true; do
  option=$(show_menu)
  case $option in
      "Global Status")
        lib/status_general.sh
        ;;
      "General Start")
        lib/start_general.sh
        ;;
      "General Stop")
        lib/stop_general.sh
        ;;
      "Make Backups")
        lib/make_backups.sh
        ;;
      "Update OS")
        lib/update_os.sh
        ;;
      "Services Status")
        lib/status_services.sh
        ;;
      "Services Start")
        lib/start_services.sh
        ;;
      "Services Stop")
        lib/stop_services.sh
        ;;
      "NextCloud Maintenance Mode Enable")
        lib/nc_en_mantenimiento.sh
        ;;
      "NextCloud Maintenance Mode Disable")
        lib/nc_en_servicio.sh
        ;;
      "Quit")
        break
        ;;
      *)
        echo "invalid option $REPLY"
        ;;
  esac

  if [[ $option == "Quit" ]]; then
    break
  fi
done

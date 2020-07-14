# Common functions library

occ='sudo -u apache php /var/www/nextcloud/occ'

# ANSI Colors escape codes
NC='\033[0m' 
BLACK='\033[0;30m'
DGREY='\033[1;30m'
GREY='\033[0;37m'
WHITE='\033[1;37m'
RED='\033[0;31m'
LRED='\033[1;31m'
GREEN='\033[0;32m'
LGREEN='\033[1;32m'
BROWN='\033[0;33m'
ORANGE='\033[1;33m'
BLUE='\033[0;34m'
LBLUE='\033[1;34m'
PURPLE='\033[0;35m'
LPURPLE='\033[1;35m'
CYAN='\033[0;36m'
LCYAN='\033[1;36m'

function start_service {
  service=$1
  echo -e ${ORANGE} "STARTING: ${1}"
  sudo systemctl start $1
  if [ $? -eq 0 ]
  then
    echo -e ${GREEN} "STARTED: ${1}"
  fi
  echo -e ${GREEN} "----------------------------${NC}"
}

function stop_service {
  service=$1
  echo -e ${ORANGE} "STOPPING: ${1}"
  sudo systemctl stop $1
  if [ $? -eq 0 ]
  then
    echo -e ${GREEN} "STOPPED: ${1}"
  fi
  echo -e ${GREEN} "----------------------------${NC}"
}


function backup_start_header {
  ht=$1
  echo -e ${GREEN} "BACKUP: ${1} starts${NC}"
  echo -e ${GREEN} "----------------------------${NC}"
}

function backup_finished_header {
  ht=$1
  echo -e ${GREEN} "----------------------------${NC}"
  echo -e ${GREEN} "BACKUP: ${1} finished${NC}"
  echo
}

function nc_on_maintenance {
  ht=$1
  echo -e ${RED}'#############' ${1^^}${NC}
}

function nc_on_service {
  ht=$1
  echo -e ${GREEN}'#############' ${1^^}${NC}
}

function section_header {
  ht=$1
  echo -e ${GREEN}'#############' ${1^^}${NC}
}

function section_footer {
  ht=$1
  echo -e ${GREEN}'#############' ${1^^}${NC}
  echo
}

function updates_available {
  ht=$1
  echo -e ${ORANGE} "OS: Updates Available ${NC}"
  echo
  echo -e "${2}"
}

function no_updates_available {
  ht=$1
  echo -e ${GREEN} "${1}: Everything up to date${NC}"
}

function backup_dir {
  echo $1
  #files=$(sudo find $1 2> /dev/null | wc -l)
  #sudo rsync -avz --delete $1 $target:~$remote_dir | pv -lpes $files > /dev/null
  #sudo rsync -avz -h --delete --info=progress2,stats1,flist0,backup0,copy0 $1 $target:~$remote_dir 
  sudo rsync -avz -h --delete --progress --info=flist0 $1 $target:~$remote_dir 
  echo -e ${GREEN} "----------------------------${NC}"
} 

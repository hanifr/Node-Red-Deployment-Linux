#!/bin/bash
# Colors
_CYAN=`tput setaf 1`
_GREEN=`tput setaf 2`
_YELLOW=`tput setaf 3`
_BLUE=`tput setaf 4`
_MAGENTA=`tput setaf 5`
_CYAN=`tput setaf 6`
_RESET=`tput sgr0`

VERSION=1.0
echo "${_GREEN}Node-Red setup script v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
echo -e "${_CYAN}Node-RED installation :: initiated${_RESET}"

sudo apt-get update
sudo apt-get upgrade -y
sleep 5
sudo apt-get install nodejs
sleep 5
sudo apt install npm 
sleep 5
sudo npm install -g --unsafe-perm node-red node-red-admin
sleep 5
sudo ufw allow 1880

echo -e "${_CYAN}Node-RED installation :: finished${_RESET}"
sleep 5

echo -e "${_CYAN} To run Node-RED :: type node-red${_RESET}"
sleep 5
echo -e "${_CYAN}Now open browser and type http://localhost:1880 to run Node-RED${_RESET}"
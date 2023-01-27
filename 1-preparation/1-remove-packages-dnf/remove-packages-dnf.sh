#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

  echo
  tput setaf 2
  echo "################################################################"
  echo "#######Remove unwanted Software from an Fedora Linux installation"
  echo "################################################################"
  tput sgr0
  echo

	sudo dnf remove asunder claws-mail xfce4-dict gnumeric pidgin pragha transmission-gtk xfburn xfdashboard xterm xarchiver  -y 
	sudo dnf autoremove -y
	sudo dnf clean packages


  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo


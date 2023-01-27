#!/bin/bash
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


func_install() {
	if rpm -qa | grep ^$1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo dnf install -y $1 
    fi
}

###############################################################################
echo "Installation of the all packages"
###############################################################################

list=(

#Application-List--------------------------------------------------------------	
rofi
geany
alacritty
catfish
exa
flameshot
foliate
htop
keepassxc
libreoffice
meld
menulibre
nextcloud-client
kvantum
qbittorrent
qutebrowser
redshift-gtk
stow
strawberry
syncthing
terminator
gnupg
vlc
android-file-transfer
plank
bleachbit
micro
filezilla
timeshift
gtkhash
megasync
stacer
dconf-editor
ghostwriter
audacious
prename
feh
gimp
smplayer
smplayer-themes
conky
grsync
gnome-clocks
qemu
virt-manager
tldr
gnome-disk-utility
yt-dlp
fzf
devilspie2
snapd
flatpak
micro
puddletag
beesu

#Fonts-----------------------------------------------------------------------


#Icon-Packs------------------------------------------------------------------


#Cursor----------------------------------------------------------------------


#GTK-Themes------------------------------------------------------------------


#Kvantum-Thmes---------------------------------------------------------------


)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Packages has been installed"
echo "################################################################"
echo;tput sgr0

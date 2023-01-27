#!/bin/bash
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


func_install() {
	if paru -Qi $1 &> /dev/null; then
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
    	paru -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of the all packages"
###############################################################################

list=(

#Application-List--------------------------------------------------------------	








geany-plugins
qdirstat
lightdm-settings



#Not wanted
gnome-keyring
gufw
gvfs-gphoto2
pacman-contrib
ebtables
arcolinux-hblock-git
pace

#AUR-------------------------------------------------------------------------




ibus-helakuru

#Fonts-----------------------------------------------------------------------
apple-fonts
montserrat-ttf
noto-fonts
noto-fonts-emoji
terminus-font
ttf-fira-code
ttf-ms-fonts
nerd-fonts-hack
nerd-fonts-jetbrains-mono
ttf-cascadia-code
ttf-comic-mono-git
ttf-ubuntumono-nerd
otf-fira-mono
otf-fira-sans
ttf-roboto-mono

#Icon-Packs------------------------------------------------------------------
papirus-icon-theme
tela-icon-theme
flat-remix-git
zafiro-icon-theme
colloid-icon-theme-git

#Cursor----------------------------------------------------------------------


#GTK-Themes------------------------------------------------------------------
matcha-gtk-theme

#Kvantum-Thmes---------------------------------------------------------------
kvantum-theme-materia
kvantum-theme-qogir-git


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

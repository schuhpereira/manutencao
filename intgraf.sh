#!/bin/bash

# Este script instala interface gráfica 

while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=290 --list --column "Escolha uma opção" --title="Instalador de ambiente V.1.1" \
			"Cinnamon" \
			"KDE-Plasma" \
			"Gnome" \
			"Gtkdialog" \
			"Yad" \
			"Zenity" \
			"Sair" )
	
	case "$opcao" in 

		Cinnamon )
			sudo add-apt-repository ppa:embrosyn/cinnamon			 
			sleep 2
			sudo apt-get update
			sleep 2
			sudo apt-get install cinnamon 
			sleep 2
			sudo apt install numix-gtk-theme
			sleep 2
			# Existe um problema com o menu de diálogo de desligamento, para corrigir será usando esses comandos.
			gsettings set org.cinnamon.desktop.session settings-daemon-uses-logind true
			sleep 2
			gsettings set org.cinnamon.desktop.session session-manager-uses-logind true
			sleep 2
			gsettings set org.cinnamon.desktop.session screensaver-uses-logind false
		;;
		
		KDE-Plasma ) 
            sudo add-apt-repository ppa:kubuntu-ppa/backports
            sleep 2
            sudo apt-get update
            sleep 2
            sudo apt install kubuntu-desktop
        ;;

		Gnome )
			sudo add-apt-repository ppa:gnome3-team/gnome3-staging
			sleep 2
			sudo apt-get update
			sleep 2
			sudo apt dist-upgrade -y
		;;	

		Gtkdialog )
			sudo apt-get install build-essential
			sleep 1
			cd /home/eduardo/Arquivos/Download/
			sleep 1
			wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/gtkdialog/gtkdialog-0.8.3.tar.gz
			sleep 1
			tar -xvf gtkdialog-0.8.3.tar.gz
			sleep 1
			cd gtkdialog-0.8.3/
			sleep 1
			./configure
			sleep 1
			make
			sleep 1
			sudo make install
		;;

		Yad )
			sudo apt-get update
			sleep 1
			sudo apt-get install yad
		;;

		Zenity )
			sudo apt-get update
			sleep 1
			sudo apt-get install zenity
		;;

		*) 
			break 
		;;

	esac	
done

#!/bin/bash

# Este script realiza a desinstalação de programas 
# Criado por Eduardo Schuh Pereira
# Versão 0.0.1
# Data da criação 16/07/17
# última edição dia 16/07/17

while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=540 --list --column "Escolha uma opção" --title="Instalador V.1.0.6" \
			"Google-Drive" \
			"Telegram" \
			"Whatsapp" \
			"Instagram" \
			"Spotify" \
			"VirtualBox" \
			"Vlc" \
			"Sublime-Text-3" \
		    "Qbittorrent" \
		   	"Audio-Recorder" \
		   	"WinUsb" \
		  	"Netbeans" \
		  	"Conky-Manager" \
		  	"Java" \
		  	"Teamviewer" \
		  	"Dia" \
		  	"YouTube-DL" \
		  	"DVD-Styler" \
		  	"SimpleScreenRecorder" \
		  	"Skype" \
		  	"Wireshark" \
		  	"JDownloader" \
		  	"KDEnlive" \
		  	"PlayOnLinux" \
		  	"EclipseNeon" \
		  	"Emulador-PSP" \
		  	"HandBrake" \
		  	"Steam" \
			"Sair" )

case "$opcao" in 

	Google-Drive )
		sudo apt-get remove grive
		sleep 1
		sudo apt-get remove --auto-remove grive
		;;

	Telegram )
		sudo apt-get remove telegram
		sudo snap remove telegram-sergiusens
		;;

	Whatsapp )
		sudo apt-get remove whatsie
		sleep 1
		sudo apt-get autoremove
		;;

	Instagram )
		sudo apt-get remove ramme
		;;

	Spotify )
		sudo apt-get remove spotify-client
		sleep 1
		sudo apt-get autoremove
		;;

	VirtualBox )
		sudo apt-get remove virtualbox-5.1
		;;

	Vlc )
		sudo add-apt-repository ppa:nicola-onorata/desktop --remove
		sleep 1
		sudo apt-get remove vlc
		sleep 1
		sudo apt-get autoremove
		;;

	Sublime-Text-3 )
		sudo apt-get remove sublime-text-installer
		sleep 1
		sudo apt-get autoremove
		;;

	Qbittorrent )
		sudo apt-get remove qbittorrent
		sleep 1 
		sudo apt-get autoremove
		;;

	Audio-Recorder )
		sudo add-apt-repository ppa:audio-recorder/ppa --remove
		sleep 1
		sudo apt-get autoremove
		;;

	*) break 
	;;
		esac
	done
#!/bin/bash

while [[ true ]]; do
	opcao=$(zenity --width=250 --height=220 --list --column "Escolha uma das opções" --title="Atualização V.1.0" \
			"Repositorios" \
			"Distro" \
			"Programas" \
			"Todos" \
			"Sair")
	case "$opcao" in
		Repositorios )
			sudo trickle -s -d 50 apt-get update
		;;

		Distro ) 
			sudo trickle -s -d 50 apt-get -f dist-upgrade
		;;

		Programas )
			sudo trickle -s -d 50 apt-get upgrade
		;;

		Todos )
			sudo trickle -s -d 50 apt-get update

			sudo trickle -s -d 50 apt-get -f dist-upgrade 

			sudo trickle -s -d 50 apt-get upgrade
		;;

		* )
			break 
		;;
	esac
done
#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Data: 20/06/2016 
# Versão 0.1.4
# Script criado para realizar backup.

while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=200 --list --column "Escolha uma opção" --title="Backup V.1.0" \
				"Backup" \
				"Voltar" )
				
	case "$opcao" in
		
		# Realiza backup.
		Backup )
			
	# Declarando as variáveis ORIGEM, DESTINO, EXCDESTINO.
	ORIGEM="/home/schuh/Arquivos/Scripts/"
	DESTINO="/media/schuh/pendrive/"

	# Backup da pasta de Origem
	echo "Copiando a pasta dos Scripts." && sleep 1
	total=$(du -s "$ORIGEM" | awk '{print $1}')

	cp -r "$ORIGEM" "$DESTINO" &>/dev/null  &

	while true
		do
        [[ -z $(pidof cp) ]] && break

        copiado=$(du -s "$DESTINO" | awk '{print $1}')
        echo "# Copiando arquivos....$((copiado*100/total))%"

	done | yad --title "Realizando Backup" --progress --value=0 --auto-close --no-cancel --auto-kill 
	
	echo
	echo "Backup realizado com sucesso." && sleep 3

	echo "Saindo e voltando para o menu" && sleep 3
	;;

	* )	
		break 
	;;

	esac
done
#!/bin/bash

# Criado por Eduardo Schuh Pereira
# Dia 13/04/2017
# Última edição 16/04/2017
# Versão - V0.0.5
# Script criado para que o usuário possa digitar o horário de desligamento do sistema

# Pergunta e armazena a hora digitada.
hora=$(zenity --title="Desligamento do sistema" --text "Em que horário deseja desligar?" --entry)
# Comando que será executado após definir a hora do desligamento.
	sudo shutdown --no-wall -h $hora | ENTRY=`zenity --title "Digite sua senha" --password`
# Informa a hora que será desligado o sistema
	zenity --info --title="Desligamento do sistema" --text="O sistema será desligado às: $hora"

# Converte a hora digitada em segundos
entradasegundos=$(date -d "1970-01-01 $hora UTC" +%s)
# Converte a hora atual do sistema em segundos
atualsegundos=$(date -d "1970-01-01 $(date +%T) UTC" +%s)
# Calcula a diferença entre a hora do desligamento com a hora atual do sistema
segundos=$(echo "$entradasegundos - $atualsegundos" | bc)

# Armazena o PID do programa disparado em background
pid=$!

# Via subshell verifica se o processo disparado ainda esta em execucao e vai populando a barra de progresso do Zenity
(ctd=1; while [ -d "/proc/$pid" ]; do
	echo "# Faltam $segundos segundos para desligar o sistema!"
	echo $ctd
	sleep 1
	# Verifica se a contagem ainda não chegou ao fim.
	if test "$segundos" -eq 0; then 
		break
	fi

# Diminui em um segundo
  segundos=$(( segundos - 1 )) 

	((ctd--))
done; echo 100) | zenity --progress --width=310 --percentage=100 --title='Desligando...' --auto-close 
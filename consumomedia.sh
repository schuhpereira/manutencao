#!/bin/bash

VALOR=$(zenity --title="Consumo / Média" --text "Quantos Reais você abasteceu?" --entry)

VALORLITRO=$(zenity --title="Consumo / Média" --text "Qual o preço por litro?" --entry)

KMINICIAL=$(zenity --title="Consumo / Média" --text "QuaL era o KM inicial?" --entry)

KMFINAL=$(zenity --title="Consumo / Média" --text "QuaL era o KM final?" --entry)

# AGORA VAMOS CALCULAR A QUANTIDADE DE LITROS ABASTECIDOS
QTDLITROS=$(echo "scale=3; $VALOR / $VALORLITRO" | bc)

# AGORA VAMOS CALCULAR A QUANTIDADE DE QUILOMETROS PERCORRIDOS
QTDKM=$(echo "scale=3; $KMFINAL - $KMINICIAL" | bc)

# AGORA VAMOS CALCULAR COMO FICOU NOSSA MÉDIA POR QUILOMETRO
MEDIA=$(echo "scale=3; $QTDKM / $QTDLITROS" | bc)

# MOSTRA NA TELA A MÉDIA CALCULADA
zenity --info --title="Consumo / Média" --text "Sua Média é $MEDIA por quilometro."
#!/bin/bash

#################################################################
#  Script criado para obter informações do sistema operacional  #
#  criado por Eduardo Schuh Pereira                             #
#  Última edição feita no dia 10/03/2017 às 8:00                #
#################################################################


# INFORMA O TEMPO QUE O SISTEMA ESTÁ ATIVO

uptime | awk '{print $3,$4,$5}'


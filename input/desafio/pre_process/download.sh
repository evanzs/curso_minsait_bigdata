#!/bin/bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG="${BASEDIR}/../config/config.sh"
source "${CONFIG}"

echo "Iniciando a criacao em ${DATE}"
echo "Com directorio ${BASEDIR}"

for table in "${TABLES[@]}"
do
    echo "navegando na estrutua de pastas."
    cd ../../raw/

    echo "criando a pasta $table"
    mkdir $table

    echo "dando permissão"
    chmod 777 $$table

    cd $table

    echo "baixando tabela $table ..."
    curl -O https://raw.githubusercontent.com/caiuafranca/dados_curso/main/$table.csv

done


echo "Finalizando a criacao em ${DATE}"
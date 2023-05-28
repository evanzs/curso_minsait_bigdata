#!/bin/bash

array=("alunos" "categoria" "cidade" "cliente" "estado" "filial" "item_pedido" "parceiro" "produto" "subcategoria")

teste=("cidade" "categoria")
for ((i=0;i <${#teste[@]};i++))
do
cd ../raw
item=${teste[i]}
mkdir $item
chmod 777 $item
cd $item
curl -O https://raw.githubusercontent.com/caiuafranca/dados_curso/main/$item.csv
cd ..
done



#!/bin/bash

DATE="$(date --date="-0 day" "+%Y%m%d)")"


TABLES=("cidade"  "estado"  "filial" "parceiro" "subcategoria" "categoria" "item_pedido" "produto")
TABELA_CLIENTE="TBL_CLIENTE"

PARTICAO=""


echo $TABLES
echo $TABELA_CLIENTE
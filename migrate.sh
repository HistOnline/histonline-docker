#!/bin/bash

local dev_flag=false

while getopts 'd' flag
do
    case "${flag}" in
        d) dev_flag=true;;
    esac
done

# Capturando variáveis de ambiente
export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)

# If dev mode replace siteurl
if "$dev_flag"
then
    echo "Executando migração em modo de desenvolvimento..."
    sed -i "s|histonline.ics.ufba.br/adm|localhost:${WORDPRESS_PORT}|g" $WORDPRESS_DUMP_FILENAME
fi

mysql -u $MYSQL_USERNAME -p$MYSQL_PASSWORD --host db $MYSQL_DATABASE < $WORDPRESS_DUMP_FILENAME
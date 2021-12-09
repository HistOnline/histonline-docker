#!/bin/bash
ncftp -u lopes.filipe -p GeneralUFBA ftp://www.histonline.ics.ufba.br/histonline.ics.ufba.br/public_html/adm/wp-content/plugins/laminas <<EOF
rm -rf *
rm -rf .git/
put -R *
quit
#!/bin/bash

lftp -u lopes.filipe,GeneralUFBA ftp://www.histonline.ics.ufba.br << EOF
mirror -c histonline.ics.ufba.br/public_html/adm/wp-content/uploads/ uploads
EOF
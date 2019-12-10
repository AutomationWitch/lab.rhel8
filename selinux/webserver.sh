#!/bin/bash

## Voici le script de déploiement du nouveau site !
## Bon week-end !

yum install httpd -y

mkdir /web
echo 'Hello World ;)' > /web/index.html

sed -i 's/DocumentRoot \"\/var\/www\/html\"/DocumentRoot \"\/web\"/g' /etc/httpd/conf/httpd.conf
sed -i 's/Directory \"\/var\/www\/html\"/Directory \"\/web\"/g' /etc/httpd/conf/httpd.conf

systemctl enable --now httpd

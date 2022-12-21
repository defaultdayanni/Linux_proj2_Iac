
#!/bin/bash

echo "atualizando servidor"

apt update
apt apgrade -y

echo "instalando apache2"

apt install apache2

echo "instalando unzip"

apt install unzip

echo "baixando aplicações"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando"

unzip main.zip

cd /linux-site-dio-main
  
cp  *  /var/www/html -r

echo "finalizado"


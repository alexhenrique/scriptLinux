#!/bin/bash
echo "Atualizando servidor..."
apt-get update
apt-get upgrade - y

echo "Instalando programas..."
apt-get install apache2 -y
apt-get install git -y

echo "Entrando na pasta html do servidor Apache..."
cd /var/www/html/
rm -r -f *

echo "Clonado repositorio do GitHub..."
git clone https://github.com/denilsonbonatti/linux-site-dio.git

cd linux-site-dio

echo "Copiando site para pasta do Apache Linux Server..."
cp -R * /var/www/html/

cd ..

echo "Apagando pasta vazia do Apache Linux Server..."
rm -Rf linux-site-dio

echo "Site baixado e instalado no Apache server com sucesso..."
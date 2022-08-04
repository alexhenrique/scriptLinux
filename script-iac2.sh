#!/bin/bash
echo "Atualizando servidor..."
apt-get update
apt-get upgrade - y

echo "Instalando programas..."
apt-get install apache2 -y
apt-get install unzip - y
apt-get install wget - y
apt-get install git - y

echo "Criando pasta tmp..."
mkdir tmp
echo "Entrando na pasta tmp..."
cd /tmp

echo "Clonado repositorio do GitHub..."
git clone https://github.com/denilsonbonatti/linux-site-dio.git

cd linux-site-dio

echo "Copiando site para pasta do Apache Linux Server..."
cp -R * /var/www/html/

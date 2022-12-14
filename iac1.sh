#!/bin/bash
echo " !!! Criando Diretorios !!!"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo " !!! Diretorios Criado !!!"

echo " !!! Criando Grupos !!!"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo " !!! Tarefa Criando Grupos finalizada !!!"

echo " !!! Criando usuarios do sistema !!!"

echo " !!! Criando usuarios ADM !!!"
useradd carlos -c /bin/bash -c $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo " !!! Tarefa Criando usuarios ADM finalizada !!!"


echo " !!! Criando usuarios vendas !!!"
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN


echo " !!! Criando usuarios Secretariado !!!"
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "!!! Tarefa criando usuarios secretariado finalizada !!!"

echo "!!! Especificando permissões dos diretórios !!!"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo " !!! Tarefa finalizada com sucesso !!!"

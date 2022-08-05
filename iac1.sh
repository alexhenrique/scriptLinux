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
useradd rodrigo -c "rodrigo silva" -m -s /bin/bash -G NOME_GRUPO

echo " !!! Criando usuarios ADM !!!"
useradd carlos -c "carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao_ -c "joao" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao_ -e
echo " !!! Tarefa Criando usuarios ADM finalizada !!!"


echo " !!! Criando usuarios vendas !!!"
useradd debora -c "debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e


echo " !!! Criando usuarios Secretariado !!!"
useradd josefina -c "josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e
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

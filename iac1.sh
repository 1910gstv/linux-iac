#!/bin/bash

echo "Criando diretorios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd vinijr -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
useradd rodrygo -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM
useradd endrick -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_ADM

useradd mbappe -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd neymar -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN
useradd garrincha -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_VEN

useradd pogba -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd zidane -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC
useradd richy -m -s /bin/bash -p $(openssl passwd -1 123) -G GRP_SEC

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec  
chmod 777 /public

echo "Procedimento finalizado!"

 

#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd max -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd roberto -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd miriam -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123)  -G GRP_VEN
useradd teresa -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd claire -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd carol -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd alicia -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd leilane -m -s /bin/bash -p -e $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim...." 

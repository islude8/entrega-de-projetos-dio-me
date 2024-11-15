#!/bin/bash

echo  *Criando diretórios !*

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo *Criando grupos de usuário !*

groupadd GRT_ADM
groupadd GRT_VEN
groupadd GRT_SEC
 
echo *Vriando usuário !*

useradd Oda -m -a /bin/bash -p &(openssl passwd -crypt abc123)
useradd Marika -m -a /bin/bash -p &(openssl passwd -crypt abc123)
useradd JhonDoe -m -a /bin/bash -p &(openssl passwd -crypt abc123)
useradd Josefino -m -a /bin/bash -p &(openssl passwd -crypt abc123)
useradd Marinalva -m -a /bin/bash -p &(openssl passwd -crypt abc123)

echo *Adicionando usuáriosaos grupos. *


useradd Oda -m -a /bin/bash -p &(openssl passwd -crypt abc123) -G GRP_ADM
useradd Marika -m -a /bin/bash -p &(openssl passwd -crypt abc123) -G GRP_ADM
useradd JhonDoe -m -a /bin/bash -p &(openssl passwd -crypt abc123) -G GRP_VEN
useradd Josefino -m -a /bin/bash -p &(openssl passwd -crypt abc123) -G GRP_VEN
useradd Marinalva -m -a /bin/bash -p &(openssl passwd -crypt abc123) -G GRP_SEC

echo * Especificando permissões dos diretórios. *

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 770 /adm
chmod 770 /sec
chmod 770 /mod

echo * Finalizando entregaveeis ! *


 

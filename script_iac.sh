#!/bin/bash

echo 'O objetivo deste script é automatizar a criação da estrutura de uma IaC - Infrastructure as Code (Infraestrutra como Código)'

echo 'Criação dos Diretórios...'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 'Diretórios criados.'

echo 'Criação dos Grupos...'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'Grupos criados.'

echo 'Criando os Usuários e Atribuindo aos seus Grupos...'

useradd carlos -c 'Carlos Apolinário' -m -s /bin/bash -p $(openssl passwd Senha123) passwd carlos -e -G GRP_ADM
useradd maria -c 'Maria das Graças' -m -s /bin/bash -p $(openssl passwd Senha123) passwd maria -e -G GRP_ADM
useradd joao -c 'Joao Esperanto Torvalds' -m -s /bin/bash -p $(openssl passwd Senha123) passwd joao -e -G GRP_ADM
useradd debora -c 'Debora Espósito Limeira' -m -s /bin/bash -p $(openssl passwd Senha123) passwd debora -e -G GRP_VEN
useradd sebastiana -c 'Sebastiana Josifina Fina' -m -s /bin/bash -p $(openssl passwd Senha123) passwd sebastiana -e -G GRP_VEN
useradd roberto -c 'Roberto Carlos Apolinário' -m -s /bin/bash -p $(openssl passwd Senha123) passwd roberto -e -G GRP_VEN
useradd josefina -c 'Josefina Eucaristia Borges' -m -s /bin/bash -p $(openssl passwd Senha123) passwd josefina -e -G GRP_SEC
useradd amanda -c 'Amanda Maeda Miyamoto' -m -s /bin/bash -p $(openssl passwd Senha123) passwd amanda -e -G GRP_SEC
useradd rogerio -c 'Rogerio Lopes' -m -s /bin/bash -p $(openssl passwd Senha123) passwd rogerio -e -G GRP_SEC

echo 'Usuários criados.'

echo 'Atribuindo Permissões aos Diretórios...'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo 'Permissões Atribuídas.'

echo 'Data da criação da estrutura."

date

echo 'Criação da estrutura da IaC finalizada.'

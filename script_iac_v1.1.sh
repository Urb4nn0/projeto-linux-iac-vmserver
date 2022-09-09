#!/bin/bash
echo -e

echo '######################################################################################################################'
echo '#                                                                                                                    #'
echo '#  O objetivo deste script é automatizar a criação de uma IaC - Infrastructure as Code (Infraestrutura como Código)  #'
echo '#                                                                                                                    #'
echo '######################################################################################################################'

echo -e

echo '# Criação dos Diretórios... #'

echo -e

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo -e

echo '*** Diretórios criados ***'

echo -e

echo '# Criação dos Grupos... #'

echo -e

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo -e

echo '*** Grupos criados ***'

echo -e

echo '# Criando os Usuários e Atribuindo seus Grupos... #'

echo -e

useradd carlos -c 'Carlos Apolinário' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c 'Maria das Graças' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c 'Joao Esperanto Torvalds' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora -c 'Debora Espósito Limeira' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c 'Sebastiana Josifina Fina' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c 'Roberto Carlos Apolinário' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd josefina -c 'Josefina Eucaristia Borges' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c 'Amanda Maeda Miyamoto' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c 'Rogerio Lopes' -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo -e

echo '*** Usuários criados ***'

echo -e

echo '# Atribuindo Permissões aos Diretórios... #'

echo -e

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo -e

echo '*** Permissões Atribuídas ***'

echo -e

echo 'Data da criação da estrutura:'

echo -e

date

echo -e

echo '# Estrutura da IaC finalizada #'

echo -e

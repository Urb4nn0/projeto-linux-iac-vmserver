#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "Usuário Convidado 10" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest10 -e

useradd guest11 -c "Usuário Convidado 11" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest11 -e

useradd guest12 -c "Usuário Convidado 12" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest12 -e

useradd guest13 -c "Usuário Convidado 13" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest13 -e

useradd guest14 -c "Usuário Convidado 14" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest14 -e

useradd guest15 -c "Usuário Convidado 15" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest15 -e

echo "Finalizado!"

#!/bin/bash

echo "criando usuarios..."

useradd guest11 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 senha123)
passwd guest11 -e

useradd guest12 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 senha123)
passwd guest12 -e

useradd guest13 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 senha123)
passwd guest13 -e

echo "Finalizado"
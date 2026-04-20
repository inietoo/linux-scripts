#!/bin/bash

echo "------------------------------------"
echo "--   Script de creació d'usuari   --"
echo "--         Autor: Igor            --"
echo "------------------------------------"

read -p "Introdueix el nom del nou usuari: " USUARI

# Comprovem que s'ha introduït un nom d'usuari
if [ -z "$USUARI" ]; then
    echo "Error: No s'ha introduït cap nom d'usuari."
    exit 1
fi

# Comprovem que l'usuari no existeix
if id "$USUARI" &>/dev/null; then
    echo "Error: L'usuari '$USUARI' ja existeix."
    exit 1
fi

# Creem l'usuari
useradd -m -s /bin/bash "$USUARI"
if [ $? -ne 0 ]; then
    echo "Error: No s'ha pogut crear l'usuari '$USUARI'."
    exit 1
fi
echo "Usuari '$USUARI' creat correctament."
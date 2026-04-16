#!/bin/bash
# Script d'instal·lació de paquets
# Autor: Igor

# Comprovem que s'han passat paràmetres
if [ $# -eq 0 ]; then
    echo "Ús: $0 paquet1 paquet2 ..."
    exit 1
fi

# Els paquets venen dels paràmetres ($@)
PAQUETS="$@"

# Actualitzem la llista de paquets
apt update

# Actualitzem els paquets instal·lats
apt upgrade -y

# Instal·lem els paquets rebuts com a paràmetres
apt install -y $PAQUETS
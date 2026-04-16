#!/bin/bash
# Script d'instal·lació de paquets
# Autor: [Igor]

# Variable amb els paquets a instal·lar
PAQUETS="vim git curl"

# Actualitzem la llista de paquets
apt update

# Actualitzem els paquets instal·lats
apt upgrade -y

# Instal·lem els paquets de la variable
apt install -y $PAQUETS
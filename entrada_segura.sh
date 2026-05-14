#!/bin/bash

# ============================================================
# Script: entrada_segura.sh
# Descripció: Validació de rutes amb bucles until i while
# ============================================================

ruta=""

# ---------------------------------------------------------------
# BUCLE UNTIL: s'executa MENTRE la condició és FALSA.
# Es deté quan la ruta introduïda existeix al sistema (-e "$ruta").
# ---------------------------------------------------------------
until [ -e "$ruta" ]; do

    echo ""
    echo "Introdueix la ruta d'un fitxer o directori existent"
    echo "(o escriu 'sortir' per acabar):"
    read -r ruta

    # Control de sortida: si l'usuari escriu 'sortir', acabem
    if [ "$ruta" = "sortir" ]; then
        echo "Sortint de l'script. Fins aviat!"
        exit 0
    fi

    # Si la ruta no és vàlida, mostrem error i el bucle es repeteix
    if [ ! -e "$ruta" ]; then
        echo "La ruta no és vàlida, torna-ho a intentar."
    fi

done

echo ""
echo "Ruta vàlida detectada: $ruta"
echo "Iniciant simulació de processament..."

# ---------------------------------------------------------------
# Demanem un número per al compte enrere
# ---------------------------------------------------------------
num=""

# Validem que l'entrada sigui un valor numèric enter positiu
while ! [[ "$num" =~ ^[0-9]+$ ]]; do
    echo ""
    echo "Introdueix un número enter per al compte enrere (ex: del 1 al 5):"
    read -r num

    if ! [[ "$num" =~ ^[0-9]+$ ]]; then
        echo "Error: '$num' no és un valor numèric vàlid. Torna-ho a intentar."
    fi
done

echo ""
echo "Iniciant compte enrere des de $num..."
echo "------------------------------------"

# ---------------------------------------------------------------
# BUCLE WHILE: s'executa MENTRE la condició és CERTA.
# Es deté quan $num arriba a 0 (la condició -gt 0 deixa de ser certa).
# ---------------------------------------------------------------
while [ "$num" -gt 0 ]; do
    echo "Processant l'element en $num segons..."
    num=$((num - 1))
done

echo "------------------------------------"
echo "Processament completat!"

exit 0
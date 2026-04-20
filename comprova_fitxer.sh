#!/bin/bash

#Llegir la ruta del fitxer o directori a comprovar
read -p "Introdueix la ruta d'un fitxer o directori: " RUTA

#Comprovacio de la ruta o fitxer introduida
if [ -z "$RUTA" ]; then
    echo "No has introduït cap ruta"
    exit 1
fi

#Comprovem si la ruta existeix
if [ -e "$RUTA" ]; then

    # Comprovem si és un fitxer o un directori
    if [ -f "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un fitxer"
    elif [ -d "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un directori"
    fi

    # Permisos de lectura: comprovem si l'usuari té permisos de lectura
    if [ -r "$RUTA" ]; then
        echo "Tens permisos per llegir aquest element"
    else
        echo "No tens permís de lectura"
    fi

else
    echo "Error: La ruta $RUTA no es troba en el sistema"
fi
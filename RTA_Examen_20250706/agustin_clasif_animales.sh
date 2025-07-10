#!/bin/bash

FECHA="20241119"

mkdir -p /tmp/Animales/{Agua,Tierra/{Mamiferos,Oviparos}}


LISTA=$1
iANT_IFS=$IFS
IFS=$'\n'

> /tmp/animales.txt

for LINEA in $(grep -v ^# "$LISTA"); do
    ANIMAL=$(echo "$LINEA" | awk '{print $1}')
    HABITAT=$(echo "$LINEA" | awk '{print $2}')

    echo "${FECHA} - Animal: ${ANIMAL} - Habitat: ${HABITAT}" >> /tmp/animales.txt

    case "$HABITAT" in
        AG) DEST="/tmp/Animales/Agua" ;;
        TM) DEST="/tmp/Animales/Tierra/Mamiferos" ;;
        TO) DEST="/tmp/Animales/Tierra/Oviparos" ;;
        *) continue ;;
    esac

    echo "${FECHA} - Animal: ${ANIMAL} - Habitat: ${HABITAT}" > "${DEST}/${ANIMAL}.txt"
done

IFS=$ANT_IFS

echo "Completado"

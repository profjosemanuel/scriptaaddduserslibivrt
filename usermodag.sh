#!/usr/bin/env bash

USUARIOS=(
    "gerangtol"
    "rolarilop"
    "bruarnlor"
    "fercol2"
    "juadelnan"
    "usaduinaj"
    "emmsolley"
    "patruscam"
    "adrrilcha"
    "kilrodgua"
    "izaromroi"
    "valvelnaz"
    "shiyan6"
)

GRUPO="libvirt"

for usuario in "${USUARIOS[@]}"; do
#    if id "$usuario" &>/dev/null; then
        echo "Añadiendo $usuario al grupo $GRUPO..."
        usermod -aG "$GRUPO" "$usuario"
#    else
#        echo "Aviso: el usuario '$usuario' no existe, se omite."
#    fi
done

echo "Proceso completado."

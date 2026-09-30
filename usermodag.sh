#!/usr/bin/env bash

USUARIOS=(
    "gerangtol"
    "rolarilop"
    "bruarnlor"
)

GRUPO="libvirt"

for usuario in "${USUARIOS[@]}"; do
    if id "$usuario" &>/dev/null; then
        echo "Añadiendo $usuario al grupo $GRUPO..."
        usermod -aG "$GRUPO" "$usuario"
    else
        echo "Aviso: el usuario '$usuario' no existe, se omite."
    fi
done

echo "Proceso completado."

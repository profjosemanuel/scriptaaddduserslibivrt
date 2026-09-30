#!/usr/bin/env bash

USUARIOS=(
    "usuario1"
    "usuario2"
    "usuario3"
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

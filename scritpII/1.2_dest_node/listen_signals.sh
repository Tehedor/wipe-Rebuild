#!/bin/bash

# Puerto en el que el servidor escuchará las señales
PORT=12345

# Ruta al script que se ejecutará
SCRIPT_PATH=~/export_volume.sh

# Función para manejar la señal y ejecutar el script
handle_signal() {
  echo "Señal recibida. Ejecutando el script..."
  sudo bash $SCRIPT_PATH
}

# Escuchar en el puerto especificado y manejar la señal
while true; do
  echo "Esperando señales en el puerto $PORT..."
  nc -l -p $PORT -c 'handle_signal'
done
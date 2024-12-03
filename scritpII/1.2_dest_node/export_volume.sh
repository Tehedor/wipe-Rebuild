#!/bin/bash

# Asignar el nombre del PVC
VOLUME_NAME="mongo-pvc"

# Crear el directorio si no existe
EXPORT_DIR=~/Documents/export
mkdir -p $EXPORT_DIR

# Definir las rutas
SOURCE_DIR="/mnt/mongo"
DEST_DIR=~/Documents/export$SOURCE_DIR

# Crear el directorio de destino si no existe
mkdir -p $DEST_DIR

# Exportar el VolumeDirectory
sudo cp -r $SOURCE_DIR $DEST_DIR

echo "Exportación completada. Archivos guardados en: $DEST_DIR"
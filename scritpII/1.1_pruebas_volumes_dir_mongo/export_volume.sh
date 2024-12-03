#!/bin/bash

# Asignar el nombre del PVC
VOLUME_NAME="mongo-pvc"

# Crear el directorio si no existe
EXPORT_DIR=~/Documents/1_snapshotVolumes/export
mkdir -p $EXPORT_DIR

# Quiero que me saque en que nodo esta montado el pod de mongo
# Obtener el nombre del pod de MongoDB
MONGO_POD=$(kubectl get pods --all-namespaces -o jsonpath='{.items[?(@.metadata.labels.app=="mongo")].metadata.name}')

# Verificar si se encontró el pod de MongoDB
if [ -z "$MONGO_POD" ]; then
    echo "No se encontró ningún pod de MongoDB."
    exit 1
fi

# Obtener el nodo en el que está montado el pod de MongoDB
MONGO_NODE=$(kubectl get pod $MONGO_POD --all-namespaces -o jsonpath='{.spec.nodeName}')

# Mostrar el nodo en el que está montado el pod de MongoDB
echo "El pod de MongoDB '$MONGO_POD' está montado en el nodo '$MONGO_NODE'."

# # Definir las rutas
# SOURCE_DIR="/mnt/mongo"
# DEST_DIR=~/Documents/1_snapshotVolumes/export

# # Crear el directorio de destino si no existe
# mkdir -p $DEST_DIR

# # Exportar el VolumeDirectory
# scp -i ~/.ssh/kmaster01 -r develop@$MONGO_NODE:$SOURCE_DIR $DEST_DIR

# echo "Exportación completada. Archivos guardados en: $EXPORT_DIR"





# bash ./delete_volumes_mongo.sh 
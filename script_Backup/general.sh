#!/bin/bash

# source "./components/*"
for file in ./components/*.sh; do
  source "$file"
done

# 1.- Detectar todos los namespaces exitentes


# 2.- Dividir Namespace por servicio
extract_namespace


    # 2.1.- Sacaremos de cada servicio todo los resource types que haya   


    # 2.2- Ver si hay volumne montado

        # Si hay volumen lo compimiremos en un tar.gz

    
    # 2.3- Filtraremos del file de config lo recursos necesarioa para el backup



    # 2.3- Exportar resultado de 2.2 y 2.3 al bucket de backup



# 
#!/bin/bash

# Construir la imagen Docker
docker build -t blazor-app .


sleep 2

# Limpiar la pantalla (opcional)
clear


sleep 1

# Ejecutar el contenedor en el puerto 8080
docker run -d -p 5000:5000 --name semana03 blazor-app
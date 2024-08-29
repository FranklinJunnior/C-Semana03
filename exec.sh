#!/bin/bash

# Construir la imagen Docker
docker build -t blazor-app .

# Pausar la ejecución por 2 segundos (opcional)
sleep 2

# Limpiar la pantalla (opcional)
clear

# Pausar la ejecución por 1 segundo (opcional)
sleep 1

# Ejecutar el contenedor en el puerto 8080
docker run -d -p 5000:5000 --name tutorial02 blazor-app
#!/bin/bash

# Verificar se a imagem debian-ssh existe
if [[ "$(docker images -q debian-ssh 2> /dev/null)" == "" ]]; then
    echo "Imagem debian-ssh não encontrada. Construindo a partir do Dockerfile..."
    # Build da imagem usando o Dockerfile
    docker build -t debian-ssh -f Dockerfile .
fi

# Subir os containers usando docker-compose up
sudo docker-compose up -d


#!/bin/bash


#Variables
USERID=$(id -u)
repo="bootcamp-devops-2023"
bdd="devopstravel"

sudo apt-get update

#Fase de Instalacion

if dpkg -l | grep git;
   then echo "ya esta instalado git"
   else
   echo "instalando git"
   sudo apt install git -y
fi

if dpkg -l | grep curl;
   then echo "ya esta instalado curl"
   else
   echo "instalando curl"
   sudo apt install curl -y
fi

if dpkg -l | grep docker.io
   then echo "ya esta instalado docker.io"
   else
   echo "instalando docker.io"
   sudo apt install docker.io -y
fi

if dpkg -l | grep docker-compose
   then echo "ya esta instalado docker-compose"
   else
   echo "instalando docker-compose"
   sudo apt install docker-compose -y
fi


#Fase de Construccion Base de Datos, Imagen y Contenedores


cd --
cd ~/repo
sudo docker-compose -p 295-Reto2-LAMP --env-file env.dev -d --build
sudo docker ps 





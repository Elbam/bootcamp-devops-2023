# Ejercicio 2: "DevOps Travel Challenge: Elevando la LAMP a Nuevas Alturas con Docker"

Esta aplicación es una LAMP (Linux, Apache, MySQL, PHP) stack que incluye PHP, Apache, y una base de datos MariaDB, gestionada a través de phpMyAdmin. 

El objetivo es containerizar la aplicación, orquestar múltiples contenedores con Docker Compose, subir las imágenes resultantes a Docker Hub y automatizar todo el proceso con un script en bash.

### Como funciona la aplicación

- Los usuarios pueden reservar paquetes fácilmente a través de esta plataforma fácil de usar en la ubicación deseada.
- El sitio web front-end está creado utilizando HTML CSS y JavaScript.
- Este sitio web se hace flexible y responsivo.
- El Backend de este sitio web está realizado utilizando base de datos php y MySQL.
- El sitio web se ejecuta en el servidor Apache.

## Arquitectura de la Aplicación

![](./assets/12.png)

En el diagrama de arquitectura, los usuarios inician una solicitud HTTP accediendo a la aplicación a través del navegador utilizando "localhost" o la dirección IP del servidor. El servidor, con Apache instalado, responde entregando el archivo  a los usuarios, solicitándoles que completen sus datos, incluido su nombre, correo electrónico y descripción.

Al completar el formulario, los usuarios envían los datos al servidor. Luego, Apache reenvía los datos enviados a un script PHP responsable de almacenar esta información en la base de datos MySQL. Si los datos se almacenan correctamente, MySQL comunica este éxito al script PHP, que responde con un mensaje HTML que se muestra en el navegador del usuario. Por otro lado, si hay un problema al guardar los datos, el script PHP devuelve un mensaje de error al navegador del usuario, notificándole el problema encontrado.

Esta sólida arquitectura garantiza un flujo fluido de datos entre los usuarios, Apache, PHP y MySQL, proporcionando una experiencia de usuario fluida y una gestión de datos confiable.


## Diagrama de la Aplicación
Incluye los accesos principales

- Home Page
- Gallery 
- Package
- Booking 

![](./assets/11.png)


### Pasos del Desafío:

#### Containerización con Docker:

- Se Creo un Dockerfile para los componentes de la aplicación PHP y Apache.

  Se utilizon un enfoque multicapas

#### Docker Compose para multicontenedores:

- Se Creo un archivo docker-compose.yml que orquesto todos los contenedores necesarios para la aplicación DevOps Travel.:
            
            Maria DB
            PHP
            PHPMyAdmin (Administracion de la BdD)

            Se gestiona el Volumen para Persistencia de Datos
            Se gestiona la Red entre los contenedores 


#### Subida a Docker Hub:

   - Crea una cuenta en Docker Hub si no la tienes.
   - Construye las imágenes Docker de tu aplicación y súbelas a Docker Hub.
   - Utiliza versiones semánticas para etiquetar tus imágenes.

#### Script Bash de Automatización:

- Se Crea el script bash llamado deploy.sh que automatiza el proceso completo.
          - El script incluye los pasos para construir cada imagen, etiquetarlas, subirlas a Docker Hub y luego ejecutar Docker Compose.
          - Ademas debes validar si la imagen que se subio a docker hub es la misma y no dejarlo avanzar
          recueden las imagenes deben ser inmutables
          - Implementa manejo de versiones semánticas en el script.

#### Documentación:

         Proporciona documentación clara y concisa en el código, Dockerfiles, docker-compose.yml y el script bash.



---


Codigo fuente: [295devops-travel-lamp](https://github.com/Elbam/bootcamp-devops-2023/tree/ejercicio2-dockeriza/295devops-travel-lamp)


Para ejecucion en KillerCoda:

https://killercoda.com/playgrounds/scenario/ubuntu

Pasos:

git clone https://github.com/Elbam/bootcamp-devops-2023.git

chmod +x bootcamp-devops-2023/295devops-travel-lamp

sudo bootcamp-devops-2023/295devops-travel-lamp/deploy.sh



Documentación Complementaria:


[Docker compose lamp](https://github.com/sprintcube/docker-compose-lamp)

[Setting Up a LAMP Stack with Docker Compose](https://mariadb.com/kb/en/setting-up-a-lamp-stack-with-docker-compose/)


© Diseñado by RoxsRoss 2023 | All Rights Reserved
© Ejecutado por Elba Marina Mujica May 2024


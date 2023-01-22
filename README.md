# Curso de Docker en Platzi

Ésta es una aplicación de ejemplo para el curso de Docker de Platzi por Guido
Vilariño.

Encuentra más información en https://platzi.com, suscríbete al curso y aprende
a usar Docker de manera profesional.

# RUN
docker build -t platziapp . # Crea una imagen con el código del proyecto, todo esta carpeta
                            # instalado los nodes_modules y corriendo node .. Imagen

docker run --rm -p 3000:3000 platziapp # Corre un contenedor

## With  Dockerfile2
docker run --rm -p 3000:3000 -v $(pwd)/index.js:/usr/src/index.js platziapp

## Create a network
`docker create --attachable platzinet`
`docker network connect plazinet db`

## corro el contenedor “app” y le paso una variable
docker run -d -name app -p 3000:3000 --env MONGO_URL=mondodb://db:27017/test platzi

## conecto el contenedor “app” a la red “plazinet”
docker network connect plazinet app


# WITH docker-compose
1. git clone https://github.com/AlexNaupay/docker-node.git
2. docker buil -t platziapp .
3. docker-compose up -d

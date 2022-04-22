# Creazione immagine con nvm & npm

Immagine per la gestione di nv, node, npm

## Creare volume e network

Volume e network saranno usati da molteplici immagini 

docker create volume php-services
docker create network dockerlocale

## Per il build dell'immagine

docker build -f nvm.Dockerfile -t docker-locale/nvm .

## Per lanciare il container

docker run -id -v php-services:/srv --network dockerlocale --net-alias nvm docker-locale/nvm bash

## Installare manualmente NODE

nvm install node

## Aggiornare immagine locale con le modifiche

docker commit <CONTAINER-ID> docker-locale/nvm

## Stoppare il container

docker container stop <CONTAINER-ID>
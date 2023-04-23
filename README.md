## Image

Build mon image
```bash
docker build .
```

Build l'image avec un tag
```bash
docker build -t <montag> .
```

Liste les images
```bash
docker image ls
```

Lance une image
```bash
docker run -ti <IMAGE ID>
```

Tagger une image
```bash
docker tag <IMAGE ID> <montag>
```

Lance un image par son tag
```bash
docker run -ti <mytag>
```

## Container


Liste les containers up
```bash
docker container ls
```

Liste tous les containers (up ou stopper)
```bash
docker oontainer ls -a
```

Stop un containers
```bash
docker kill <containerid>
```

Supprime un containers
```bash
docker rm <containerid>
```

Build un container
* docker deamon recupere l'image hello-world de dockerhub
* docker deamon créé un nouveau container à partir de cette image et execute le script
```bash
docker run hello-world
docker run <option> <image> <command>
docker run -ti ubuntu bash
```

Lance un containers
```bash
docker start -i <containerid>
```

La commande ```docker-compose up -d``` permet de lancer les conteneurs en arrière-plan (-d pour "detach"). 
Si les images Docker des conteneurs n'existent pas encore sur la machine hôte, Docker va automatiquement les télécharger depuis Docker Hub ou un autre registry.

La commande ```docker-compose up --build``` va faire la même chose que ```docker-compose up -d```, mais en plus elle va forcer la reconstruction de toutes les images Docker des conteneurs. Cela peut être utile lorsque vous avez modifié les fichiers de configuration, les dépendances ou le code source des applications, car cela permet de s'assurer que les images des conteneurs sont à jour et reflètent les changements effectués. Notez cependant que la reconstruction des images peut être coûteuse en temps et en ressources système.

En résumé, ```docker-compose up -d``` permet de lancer les conteneurs en arrière-plan, alors que ```docker-compose up --build``` permet en plus de reconstruire les images Docker des conteneurs.

## Config PHP

Problème avec le php.ini n'est pas chargé.
```bash
# Lance un shell interactif dans votre conteneur PHP
docker exec -it <nom-du-conteneur-php> sh
# Voir les fichiers de configuration PHP actuellement chargés et leur emplacement
php --ini
# Vérifier la présence du fichier de configuration dans le terminal du conteneur PHP
ls /usr/local/etc/php/
```

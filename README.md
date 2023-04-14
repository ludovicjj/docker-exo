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
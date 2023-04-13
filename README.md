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
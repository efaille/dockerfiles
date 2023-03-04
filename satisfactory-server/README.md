# Satisfactory server

### Dependencie

- [efaille/steamcmd]

### Usage

```
docker run -it -p 15777:15777/udp -p 15000:15000/udp -p 7777:7777/udp ghcr.io/efaille/satisfactory-server
```

```
docker run -it -p 15777:15777/udp -p 15000:15000/udp -p 7777:7777/udp -v $PWD:/home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server ghcr.io/efaille/satisfactory-server
```

[efaille/steamcmd]: //github.com/efaille/dockerfiles/tree/master/steamcmd

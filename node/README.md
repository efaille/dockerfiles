# Node

### Dependencie

- [efaille/alpine]

### Usage

```
docker run ghcr.io/efaille/node node --version
```

```
docker run -v $PWD:/data ghcr.io/efaille/node node helloworld.js
```

```
docker run -it -v $PWD:/data ghcr.io/efaille/node npm install
```

[efaille/alpine]: //github.com/efaille/dockerfiles/tree/master/alpine

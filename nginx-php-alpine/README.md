# Nginx + PHP config

### Dependencie

- [efaille/supervisor]

### Usage

```
$ docker run -d -p 80 ghcr.io/efaille/nginx-php
```

```
$ docker run -d -p 80 -v $PWD:/data ghcr.io/efaille/nginx-php
```

```
$ docker run -d -p 80 -v $PWD/html:/data -v $PWD/nginx.conf:/etc/nginx/nginx.conf ghcr.io/efaille/nginx-php
```

[efaille/supervisor]: //github.com/efaille/dockerfiles/tree/master/supervisor

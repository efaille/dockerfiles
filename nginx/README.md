# Nginx

### Dependencie

- [efaille/alpine]

### Usage

```
$ docker run -d -p 80 ghcr.io/efaille/nginx
```

```
$ docker run -d -p 80 -v $PWD:/data ghcr.io/efaille/nginx
```

```
$ docker run -d -p 80 -v $PWD/html:/var/www/html -v $PWD/nginx.conf:/etc/nginx/nginx.conf ghcr.io/efaille/nginx
```

[efaille/alpine]: //github.com/efaille/dockerfiles/tree/master/alpine

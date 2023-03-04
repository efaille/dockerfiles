# Nginx and PHP on Alpine Linux

### Dependencie

- [efaille/supervisor-alpine]

### Usage

```
docker run -d -p 80 ghcr.io/efaille/nginx-php-alpine
```

```
docker run -d -p 80 -v $PWD:/data ghcr.io/efaille/nginx-php-alpine
```

```
docker run -d -p 80 -v $PWD/html:/data -v $PWD/nginx.conf:/etc/nginx/nginx.conf ghcr.io/efaille/nginx-php-alpine
```

[efaille/supervisor-alpine]: https://github.com/efaille/dockerfiles/tree/master/supervisor-alpine

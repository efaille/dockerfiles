# Nginx + PHP config

### Dependencie

- [efaille/supervisor]

### Usage

```
$ docker run -d -p 80 ghcr.io/efaille/nginx-php
```

```
$ docker run -d -p 80 -v $PWD:/var/www ghcr.io/efaille/nginx-php
```

```
$ docker run -d -p 80 -v $PWD/html:/var/www -v $PWD/ssmtp.conf:/etc/ssmtp/ssmtp.conf ghcr.io/efaille/nginx-php
```

[efaille/supervisor]: //github.com/efaille/dockerfiles/tree/master/supervisor

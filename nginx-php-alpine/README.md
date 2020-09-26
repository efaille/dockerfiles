# Nginx + PHP config

### Dependencie
* [efaille/supervisor]

### Usage
```
$ docker run -d -p 80 efaille/nginx-php
```
```
$ docker run -d -p 80 -v $PWD:/data efaille/nginx-php
```
```
$ docker run -d -p 80 -v $PWD/html:/data -v $PWD/nginx.conf:/etc/nginx/nginx.conf efaille/nginx-php
```
[efaille/supervisor]://github.com/efaille/dockerfiles/tree/master/supervisor

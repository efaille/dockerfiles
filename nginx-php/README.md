# Nginx + PHP config

### Dependencie
* [efaille/supervisor]

### Usage
```
$ docker run -d -p 80 efaille/nginx-php
```
```
$ docker run -d -p 80 -v $PWD:/var/www/html efaille/nginx-php
```
```
$ docker run -d -p 80 -v $PWD/html:/var/www/html -v $PWD/ssmtp.conf:/etc/ssmtp/ssmtp.conf efaille/nginx-php
```
[efaille/supervisor]://github.com/efaille/dockerfiles/tree/master/supervisor

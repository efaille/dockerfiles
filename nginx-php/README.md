# Nginx + PHP config

### Dependencie
* [efaille/supervisor]

### Usage
```
$ docker run -d -p 80 efaille/nginx-php
```
```
$ docker run -d -p 80 -v $PWD:/var/www efaille/nginx-php
```
```
$ docker run -d -p 80 -v $PWD/html:/var/www -v $PWD/ssmtp.conf:/etc/ssmtp/ssmtp.conf efaille/nginx-php
```
[efaille/supervisor]://github.com/efaille/dockerfiles/tree/master/supervisor

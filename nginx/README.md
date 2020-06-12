# Nginx

### Dependencie
* [efaille/alpine]

### Usage
```
$ docker run -d -p 80 efaille/nginx
```
```
$ docker run -d -p 80 -v $PWD:/data efaille/nginx
```
```
$ docker run -d -p 80 -v $PWD/html:/var/www/html -v $PWD/nginx.conf:/etc/nginx/nginx.conf efaille/nginx
```
[efaille/alpine]://github.com/efaille/dockerfiles/tree/master/alpine

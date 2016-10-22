# Nginx

### Dependencie
* [efaille/ubuntu]

### Usage
```
$ docker run -d -p 80 efaille/nginx
```
```
$ docker run -d -p 80 -v $PWD:/var/www/html efaille/nginx
```
```
$ docker run -d -p 80 -v $PWD/html:/var/www/html -v $PWD/nginx.conf:/etc/nginx/nginx.conf efaille/nginx
```
[efaille/ubuntu]://github.com/efaille/dockerfiles/tree/master/ubuntu

# Wordpress on Alpine Linux

### Dependencie

- [efaille/nginx-php-alpine]

### Usage

```
docker run --link some-mysql:mysql -d -p 80 -v $PWD:/var/www ghcr.io/efaille/wordpress-alpine
```

[efaille/nginx-php-alpine]: //github.com/efaille/dockerfiles/tree/master/nginx-php-alpine

# Wordpress

### Dependencie

- [efaille/nginx-php]

### Usage

```
docker run --link some-mysql:mysql -d -p 80 -v $PWD:/var/www ghcr.io/efaille/wordpress
```

[efaille/nginx-php]: //github.com/efaille/dockerfiles/tree/master/nginx-php

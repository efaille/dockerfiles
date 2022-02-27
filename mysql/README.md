# MySQL

### Dependencie

- [efaille/alpine]

### Usage

```
docker run --name some-mysql -d -p 3306 ghcr.io/efaille/mysql
```
```
docker run --name some-mysql -d -v some-mysql-data:/data ghcr.io/efaille/mysql
```
```
docker run --rm -it --link some-mysql:mysql-host ghcr.io/efaille/mysql mysql --host mysql-host --user some-user --password
```
```
docker run --rm -it ghcr.io/efaille/mysql mysql --host 192.168.1.101 --user some-user --password
```
```
docker exec -it some-mysql mysql
```
```
docker exec -it some-mysql mysqladmin shutdown
```

[efaille/alpine]: //github.com/efaille/dockerfiles/tree/master/alpine

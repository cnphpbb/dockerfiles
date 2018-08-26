# mysql-alpine

a docker image base on alpine with mysql

## build image

```shell
# docker build -t cnphpbb/mysql-alpine .
# docker run -it --rm -v $(pwd)/data:/data -p 3306:3306 cnphpbb/mysql-alpine
```

## Usage

**fiest**:

```shell
# docker run -it --name mysql -p 3306:3306 -v $(pwd)/data:/data -e MYSQL_DATABASE=admin -e MYSQL_USER=cnphpbb -e MYSQL_PASSWORD=password -e MYSQL_ROOT_PASSWORD=pwd112233 cnphpbb/mysql-alpine
```

**second**:

```shell
# docker run -d --restart always --name mysql -p 3306:3306 -v $(pwd)/data:/data  cnphpbb/mysql-alpine
```

It will create a new db, and set mysql root password(default is pwd112233)
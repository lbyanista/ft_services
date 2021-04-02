FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add openrc mariadb mariadb-common mariadb-client
COPY scriptmysql.sh /
RUN chmod +x scriptmysql.sh

CMD ./scriptmysql.sh
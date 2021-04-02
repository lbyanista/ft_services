FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add vim openrc mysql mysql-client
COPY scriptmysql.sh /
RUN chmod +x scriptmysql.sh

CMD ./scriptmysql.sh
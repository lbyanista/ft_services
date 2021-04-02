FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add vim vsftpd openssl openrc
COPY scriptftps.sh /
RUN chmod +x scriptftps.sh
CMD ./scriptftps.sh


EXPOSE 21
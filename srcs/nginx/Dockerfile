FROM alpine:3.12
COPY scriptng.sh /
RUN mkdir www/
COPY index.php /www
RUN chmod +x scriptng.sh
CMD ./scriptng.sh
EXPOSE 80 443
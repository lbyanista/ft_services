FROM alpine:3.12
RUN apk update
RUN apk add vim mysql mysql-client nginx php7 php7-common php7-ldap php7-ctype php7-posix php7-imap fcgi php7-cgi php7-fpm php7-opcache php7-gd php7-mysqli \
&& apk add php7-zlib php7-curl php7-fpm php7-mcrypt php7-soap php7-session php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-sqlite3 \
&& apk add  php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xml php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv \
&& apk add  php7-pdo_dblib php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip php-mbstring php-gettext bash openrc libc6-compat --no-cache


RUN mkdir /www

COPY default.conf /etc/nginx/conf.d/
COPY index.php /www
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz && rm -rf latest.tar.gz && mv wordpress/ /www
COPY wp-config.php /www/wordpress
RUN ln -s /www/wordpress/ /var/www/localhost/htdocs/wordpress
COPY scriptwp.sh /

COPY wordpress.sql /
RUN chmod +x scriptwp.sh
CMD ./scriptwp.sh

EXPOSE 5050

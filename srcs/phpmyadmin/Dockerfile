FROM alpine:3.12
RUN apk update && apk upgrade \
&& apk add vim nginx openrc php7-common php7-iconv php7-json php7-gd  php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi \
&& apk add php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7 php7-fpm \ 
&& apk add php7-zlib php7-dom php7-session php7-mbstring \
&& apk add mysql mysql-client --no-cache
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz && tar zxvf phpMyAdmin-5.1.0-all-languages.tar.gz \
&& rm phpMyAdmin-5.1.0-all-languages.tar.gz && mv phpMyAdmin-5.1.0-all-languages/ phpmyadmin

RUN mkdir /www && mv phpmyadmin/ /www
RUN ln -s /www/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
RUN mv /www/phpmyadmin/config.sample.inc.php config.inc.php
COPY config.inc.php /www/phpmyadmin/
COPY default.conf /etc/nginx/conf.d/
COPY scriptpma.sh /
RUN chmod +x scriptpma.sh
CMD ./scriptpma.sh

EXPOSE 5000
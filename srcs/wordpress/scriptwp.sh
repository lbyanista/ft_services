#!/bin/bash

openrc reboot
rc-service nginx start

rc-service php-fpm7 start

# /etc/init.d/lighttpd restart

#Config and start MySql
/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb setup
/etc/init.d/mariadb start && rc-update add mariadb default
/usr/bin/mysqladmin -u root password 'password'


#Create the WordPress database
# mysql -u root -p
mysql -e "CREATE DATABASE wordpress;"
mysql < ./wordpress.sql -u root wordpress;
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'password';"
mysql -e "FLUSH PRIVILEGES;"
# EXIT

sh
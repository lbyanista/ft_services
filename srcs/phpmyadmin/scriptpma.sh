
openrc reboot
rc-service nginx start
rc-service php-fpm7 start

#Config and start MySql
/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb setup
/etc/init.d/mariadb start && rc-update add mariadb default
/usr/bin/mysqladmin -u root password 'password'

#Create the PhpMyAdmin database
mysql -e "CREATE DATABASE phpmyadmin;"
# mysql < ./wordpress.sql -u root wordpress;
mysql -e "GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'phpmyadmin'@'localhost' IDENTIFIED BY 'password';"
mysql -e "FLUSH PRIVILEGES;"

sh
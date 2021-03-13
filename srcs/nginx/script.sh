# apk update
# apk add vim nginx openrc --no-cache
# rc-status
# touch /run/openrc/softlevel
#echo "daemon off;" >> /etc/nginx/nginx.conf

sudo openrc reboot


rc-service nginx start


rc-service php-fpm7 start
apk update
apk add nginx openrc --no-cache
rc-status
touch touch /run/openrc/softlevel
echo "daemon off;" >> /etc/nginx/nginx.conf
rc-service nginx start

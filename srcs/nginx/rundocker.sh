docker build -t alpine-nginx . --no-cache
docker run -it -p 80:80 alpine-nginx
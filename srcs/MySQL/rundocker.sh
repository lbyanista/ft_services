docker build -t alpine-mysql . --no-cache
docker run -it -p 80:80 alpine-mysql
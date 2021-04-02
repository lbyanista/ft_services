docker build -t alpine-ftps . --no-cache
docker run -it -p 21:21 alpine-ftps
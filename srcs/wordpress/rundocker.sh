docker build -t alpine-wordpress . --no-cache
docker run -it -p 5050:5050 alpine-wordpress

docker build -t alpine-phpmyadmin . --no-cache
docker run -it -p 5000:5000 alpine-phpmyadmin
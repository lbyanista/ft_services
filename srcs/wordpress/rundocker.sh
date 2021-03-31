MK4IP=$(minikube ip)
echo "minikube ip is $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" wordpress.sql
docker build -t alpine-wordpress . --no-cache
docker run -it -p 5050:5050 alpine-wordpress

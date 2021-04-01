MK4IP=$(minikube ip)
echo "minikube ip is $MK4IP"
echo "change the 'MK4IP' to present minikube ip"
sed -i '' "s/MK4IP/$MK4IP/g" wordpress.sql
docker build -t alpine-wordpress . --no-cache
docker run -it -d -p 5050:5050 alpine-wordpress
echo "change the present minikube ip to 'MK4IP'"
sed -i '' "s/$MK4IP/MK4IP/g" wordpress.sql
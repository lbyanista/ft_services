echo "minikube start .."
minikube start
echo "launching dashboard ..."
minikube dashboard &

echo "eval :"
eval $(minikube docker-env)

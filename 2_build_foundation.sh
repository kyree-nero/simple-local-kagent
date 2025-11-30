alias k=kubectl
export KIND_EXPERIMENTAL_PROVIDER=podman
kind create cluster --name ollama
kubectl create namespace ollama
sh create-pvc.sh 
sh create-d.sh
sh create-s.sh    
k get pods -n ollama -w

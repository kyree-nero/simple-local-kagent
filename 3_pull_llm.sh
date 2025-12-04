alias k=kubectl
k exec -it $(k get pods -n ollama | cut -d ' ' -f 1 | grep -v NAME) -n ollama -- ollama pull tinyllama
k port-forward svc/ollama-service 11434:11434 -n ollama


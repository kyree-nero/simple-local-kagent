kubectl apply -f - <<EOF

    # ollama-deployment.yaml
    apiVersion: apps/v1
    kind: Deployment
    metadata:
      name: ollama-deployment
      namespace: ollama
    spec:
      replicas: 1
      selector:
        matchLabels:
          app: ollama
      template:
        metadata:
          labels:
            app: ollama
        spec:
          containers:
            - name: ollama
              image: ollama/ollama:latest # Or a specific version
              ports:
                - containerPort: 11434
              volumeMounts:
                - name: ollama-storage
                  mountPath: /root/.ollama # Default path for Ollama models
          volumes:
            - name: ollama-storage
              persistentVolumeClaim:
                claimName: ollama-pvc
EOF

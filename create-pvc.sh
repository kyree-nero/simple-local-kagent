#!/bin/sh 
kubectl apply -f - <<EOF

    # ollama-pvc.yaml
    apiVersion: v1
    kind: PersistentVolumeClaim
    metadata:
      name: ollama-pvc
      namespace: ollama
    spec:
      accessModes:
        - ReadWriteOnce
      resources:
        requests:
          storage: 20Gi # Adjust size as needed for your models
EOF

kubectl apply -f - <<EOF
apiVersion: kagent.dev/v1alpha2
kind: ModelConfig
metadata:
  name: llama3-model-config
  namespace: default
spec:
  apiKeySecretKey: OPENAI_API_KEY
  apiKeySecret: kagent-openai
  model: llama3
  provider: Ollama
  ollama:
    host: http://ollama-service.ollama.svc.cluster.local:11434

EOF

kagent dashboard


#!/usr/bin/env bash

# Definir a chave de API (pode ser lida de uma variável de ambiente ou arquivo)
MISTRAL_API_KEY="${MISTRAL_API_KEY}"

# Executar a requisição curl
curl https://api.mistral.ai/v1/ocr \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${MISTRAL_API_KEY}" \
  -d '{
    "model": "mistral-ocr-latest",
    "document": {
        "type": "image_url",
        "image_url": "https://raw.githubusercontent.com/ivoencarnacao/expense-tracker/refs/heads/main/20250306_ccup_cafe.png"
    }
  }' -o ocr_output.json

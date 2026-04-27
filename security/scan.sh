#!/bin/bash

echo "🔐 Running security scan..."

# Ejecutar Bandit y guardar resultado
output=$(python3 -m bandit -r app/)

echo "$output"

# Buscar si hay HIGH
echo "$output" | grep "Severity: High"

if [ $? -eq 0 ]; then
  echo "❌ High severity vulnerabilities detected!"
  exit 1
else
  echo "✅ No high vulnerabilities"
  exit 0
fi



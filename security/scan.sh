#!/bin/bash

echo "🔐 Running security scan..."

# Ejecutar Bandit en JSON (clave)
python3 -m bandit -r app/ -f json -o bandit-report.json

# Mostrar reporte
cat bandit-report.json

# Buscar HIGH correctamente
HIGH_COUNT=$(cat bandit-report.json | grep -o '"severity": "HIGH"' | wc -l)

echo "High vulnerabilities found: $HIGH_COUNT"

if [ "$HIGH_COUNT" -gt 0 ]; then
  echo "❌ High severity vulnerabilities detected!"
  exit 1
else
  echo "✅ No high vulnerabilities"
  exit 0
fi




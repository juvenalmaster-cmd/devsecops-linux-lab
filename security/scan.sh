#!/bin/bash

echo "🔐 Running security scan..."

python3 -m bandit -r app/ -lll

if [ $? -ne 0 ]; then
  echo "❌ High severity vulnerabilities detected!"
  exit 1
else
  echo "✅ No high vulnerabilities"
fi


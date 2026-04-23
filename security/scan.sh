#!/bin/bash

echo "🔐 Running security scan..."

bandit -r app/ -ll

if [ $? -ne 0 ]; then
    echo "❌ Vulnerabilities detected!"
    exit 1
else
    echo "✅ No critical vulnerabilities"
fi

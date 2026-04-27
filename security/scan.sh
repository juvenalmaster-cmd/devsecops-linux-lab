#!/bin/bash

echo "🔐 Running security scan..."

/usr/local/bin/bandit -r app/

if [ $? -ne 0 ]; then
    echo "❌ Vulnerabilities detected!"
    exit 1
else
    echo "✅ No critical vulnerabilities"
fi

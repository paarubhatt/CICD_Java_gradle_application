#!/bin/bash
set -x
SONARQUBE_URL="http://54.172.226.138:9000"

curl $SONARQUBE_URL

if [ $? -eq 0 ]; then
    echo "✅ SonarQube is healthy (Status: $status)"
    exit 0
else
    echo "❌ SonarQube is NOT healthy (Status: $status)"
    exit 1
fi

# DevSecOps Lab

## Overview
Laboratorio práctico en entorno Linux (WSL2) enfocado en DevSecOps.

## Technologies
- Linux (WSL2)
- Git
- Docker
- Python
- Bandit

## Setup
Instrucciones básicas para levantar el entorno.

## Security Practices
- Hardening básico
- Gestión de usuarios y permisos
- Análisis de código con Bandit

## Tools Used
- Bandit

## Lessons Learned
Principales aprendizajes y problemas resueltos.

## Update
## Setup

git clone https://github.com/juvenalmaster-cmd/devsecops-linux-lab.git
cd devsecops-linux-lab
docker build -t devsecops-lab .
docker run devsecops-lab
## Security Testing

## Tools Used

- Bandit (Python security analysis)
- Git (version control)
- Docker (containerization)
- Linux (WSL2 environment)

Se realizó análisis de seguridad del código utilizando Bandit, herramienta de análisis estático para Python.

```bash
bandit -r app/

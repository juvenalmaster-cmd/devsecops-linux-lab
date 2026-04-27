FROM python:3.11-slim

WORKDIR /app

RUN apt update && apt upgrade -y && apt dist-upgrade -y && apt install -y python3 python3-pip

RUN pip3 install --upgrade pip setuptools wheel

RUN pip3 install bandit

COPY app/ app/
COPY security/ security/

RUN chmod +x security/scan.sh

CMD ["./security/scan.sh"]

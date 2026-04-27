FROM python:3.11-slim

WORKDIR /app

RUN apt update && apt upgrade -y && apt dist-upgrade -y
RUN pip3 install --upgrade pip setuptools wheel

COPY app/ app/
COPY security/ security/

RUN chmod +x security/scan.sh

CMD ["./security/scan.sh"]

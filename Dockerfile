FROM ubuntu:22.04

WORKDIR /app

COPY scripts/monitor.sh .

RUN chmod +x monitor.sh

CMD ["./monitor.sh"]

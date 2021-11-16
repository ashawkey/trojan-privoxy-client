FROM ubuntu:20.04

RUN apt-get update && apt-get install -y privoxy wget xz-utils
RUN wget https://github.com/trojan-gfw/trojan/releases/download/v1.16.0/trojan-1.16.0-linux-amd64.tar.xz && tar xvJf trojan-1.16.0-linux-amd64.tar.xz && rm trojan-1.16.0-linux-amd64.tar.xz

COPY privoxy.config /etc/privoxy/config
COPY entry.sh /entry.sh

RUN chmod +x /entry.sh

EXPOSE 1086/tcp
EXPOSE 1087/tcp

CMD [ "/entry.sh" ]

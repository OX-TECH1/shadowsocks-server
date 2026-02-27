FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget curl && \
    wget --no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-go.sh && \
    chmod +x shadowsocks.sh

EXPOSE 8388

CMD ["tail", "-f", "/dev/null"]

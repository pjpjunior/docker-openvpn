FROM debian:stretch-slim

RUN apt-get update && apt-get install -y \
  openvpn \
  --no-install-recommends \
  && rm -r /var/lib/apt/lists/*

WORKDIR /etc/openvpn

EXPOSE 1194


CMD ["openvpn","server.conf"]

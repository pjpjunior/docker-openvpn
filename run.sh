#/bin/bash

#docker build -t pjpjunior/openvpn:debian9 . && docker push pjpjunior/openvpn:debian9

docker run -d --name openvpn -p 1194:1194/udp --privileged=true -v $pwd/openvpn:/etc/openvpn pjpjunior/openvpn:debian9 

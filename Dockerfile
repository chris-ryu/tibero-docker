#Dockerfile
#Requirements on host(Linux): sysctl -w net.ipv4.ip_forward=1
#Check "Testing Tibero on your own" Blog post for sysctl config and limits.

#docker build --tag tibero:dimensigon .
#docker run -h dummy -it tibero:dimensigon

FROM centos:7

LABEL maintainer="contact@dimensigon.com"

COPY prepare.bash /root/prepare.bash
COPY dist/tibero5-bin-FS05_CS_1902-linux64-166170-opt.tar.gz /tmp/

RUN bash /root/prepare.bash

ENTRYPOINT su - tibero -c "bash /home/tibero/start.bash" && /bin/bash

EXPOSE 8629-8649


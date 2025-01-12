FROM ubuntu:22.04
LABEL maintainer="sinfallas@gmail.com"
LABEL build_date="2024-12-08"
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app
COPY COPYING ./
RUN apt update -qq && apt -y dist-upgrade && apt -y install --no-install-recommends --no-install-suggests tzdata && apt -y install --no-install-recommends --no-install-suggests fprobe nfdump python3-setuptools python3-colorama git libnet-ssleay-perl libcrypt-ssleay-perl tar zip unzip qrencode awscli s3fs ssh sshpass sshfs samba-client swaks nano wget curl rsync expect && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log} && rm -rf /var/cache/* && rm -rf /var/log/apt/* && rm -rf /tmp/*
COPY capsmanqr /usr/bin/capsmanqr
COPY capsmanacl /usr/bin/capsmanacl
COPY mtkback /usr/bin/mtkback
COPY mtkvariables /usr/bin/mtkvariables
RUN chmod 777 /usr/bin/capsmanqr
RUN chmod 777 /usr/bin/capsmanacl
RUN chmod 777 /usr/bin/mtkback
RUN chmod 777 /usr/bin/mtkvariables
RUN git clone https://github.com/casterbyte/Sara.git && cd Sara/ && python3 setup.py install && cd .. && rm -rf /app/Sara/

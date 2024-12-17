FROM ubuntu:22.04
LABEL maintainer="sinfallas@gmail.com"
LABEL build_date="2024-12-08"
WORKDIR /app
COPY COPYING ./
RUN apt update -qq && apt -y dist-upgrade && apt -y install --no-install-recommends --no-install-suggests tzdata
RUN apt update -qq && apt -y dist-upgrade && apt -y install --no-install-recommends --no-install-suggests libnet-ssleay-perl libcrypt-ssleay-perl tar zip unzip qrencode awscli s3fs ssh sshpass sshfs samba-client swaks nano wget curl rsync expect && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}
COPY capsmanqr /usr/bin/capsmanqr
COPY mtkback /usr/bin/mtkback
RUN chmod 777 /usr/bin/capsmanqr
RUN chmod 777 /usr/bin/mtkback

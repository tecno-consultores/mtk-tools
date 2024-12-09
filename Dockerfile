FROM ubuntu:22.04
LABEL maintainer="sinfallas@gmail.com"
LABEL build_date="2024-12-08"
WORKDIR /app
RUN apt update -qq && apt -y dist-upgrade && apt -y install --no-install-recommends --no-install-suggests tar zip unzip qrencode awscli ssh sshfs s3fs samba-client swaks nano wget curl && apt clean && apt -y autoremove && rm -rf /var/lib/{apt,dpkg,cache,log}


FROM ubuntu:latest

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive TZ=Europe/Amsterdam \
  apt-get install --no-install-recommends -y \
    sudo time git-core subversion build-essential \
    libncurses5-dev zlib1g-dev gawk flex gettext wget unzip \
    grep rsync python3 python3-distutils ca-certificates file less vim && \
  apt-get clean

RUN useradd -m openwrt && \
  echo 'openwrt ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt
COPY ./my-diffconfigs/ ./my-diffconfigs/


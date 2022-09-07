FROM ubuntu:latest

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive TZ=Europe/Amsterdam \
  apt-get install -y —-no-install-recommends \
    sudo time git-core subversion build-essential gcc-multilib \
    libncurses5-dev zlib1g-dev gawk flex gettext wget unzip \
    grep rsync python3 python3-distutils && \
  apt-get clean

RUN useradd -m openwrt && \
  echo 'openwrt ALL=nopasswd: ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt

RUN git clone -b kernel5.10-nss-qsdk10.0 https://github.com/ACwifidude/openwrt.git && \
  openwrt/scripts/feeds update -a && \
  openwrt/scripts/feeds install -a


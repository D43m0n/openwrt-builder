FROM debian:bookworm

# Add old Debian repository for python2.7 package.
# Needed for OpenWrt 19.07.10
RUN echo "deb http://archive.debian.org/debian/ stretch contrib main non-free" >> /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y \
        sudo time git-core subversion build-essential g++ bash make \
        libssl-dev patch libncurses5 libncurses5-dev zlib1g-dev gawk \
        flex gettext wget unzip xz-utils python3 python3-distutils-extra \
        python3-distutils-extra python3-setuptools swig rsync curl \
        #libsnmp-dev liblzma-dev libpam0g-dev cpio rsync gcc-multilib qemu-utils \
        libsnmp-dev liblzma-dev libpam0g-dev cpio rsync qemu-utils vim zstd \
        python2.7 && \
    apt-get clean 
RUN useradd -m openwrt && \
  echo 'openwrt ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt
COPY ./my-diffconfigs/ ./my-diffconfigs/


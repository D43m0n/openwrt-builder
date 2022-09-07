# openwrt-builder
A OpenWRT build system that is set up with the correct toolchain. A favorite community OpenWRT repository gets cloned, feeds get updated and installed.

## Prerequisites
- docker installed
- running docker daemon
- build docker image
```
git clone https://github.com/d43m0n/openwrt-builder.git
cd openwrt-builder
docker build -t openwrt_builder .
```

## Usage
Create a local folder you want to use to exchange files from within the container and then run the container:
```
mkdir ~/openwrt-build
docker run -v ~/openwrt-build:/home/openwrt -it d43m0n/openwrt-builder /bin/bash
```
In the container, you can then run:
```
cp diffconfig .config && make defconfig && ./scripts/getver.sh
make -j5
```
After the build is done, you'll find images in `~/openwrt-build/openwrt/bin/target`.
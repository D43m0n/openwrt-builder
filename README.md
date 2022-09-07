# openwrt-builder
A OpenWRT build system that is set up with the correct toolchain. A favorite community OpenWRT repository gets cloned, feeds get updated and installed.

## Prerequisites
- docker installed
- running docker daemon
- build docker image:
```
git clone https://github.com/d43m0n/openwrt-builder.git
cd openwrt-builder
docker build -t openwrt-builder .
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

If you want to rebase against the latest commits from upstream OpenWRT, go to `/home/openwrt/openwrt`, rebase and then build with the instruction above:
```
#Remove “rebase” commit (this gives you a clean build environment - it deletes the final bin content and diffconfig files, I’d copy the diffconfig to a separate folder before running this command)
git reset --hard HEAD~1

git remote add upstream https://git.openwrt.org/openwrt/openwrt.git

#Master Rebase:
git fetch upstream && git rebase upstream/master 
```

### Credits
As often, this is inspired by others with similar solutions:
- [mwarning](https://github.com/mwarning/docker-openwrt-builder)
- [noonien](https://github.com/noonien/docker-openwrt-buildroot)
- [ACwifidude](https://github.com/ACwifidude/openwrt.git)
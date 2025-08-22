# Use "make defconfig" to expand this to a full .config
CONFIG_TARGET_ipq806x=y
CONFIG_TARGET_ipq806x_generic=y
CONFIG_TARGET_MULTI_PROFILE=y
CONFIG_TARGET_DEVICE_ipq806x_generic_DEVICE_netgear_r7800=y
CONFIG_TARGET_DEVICE_PACKAGES_ipq806x_generic_DEVICE_netgear_r7800=""
# Uncomment the line below to get all kmod packages generated (about 920) instead of
# about 170 kmod packages.
#CONFIG_ALL_KMODS=y
CONFIG_TARGET_PER_DEVICE_ROOTFS=y

## Use ath10k instead ath10k-ct
CONFIG_PACKAGE_ath10k-firmware-qca9984=y
# CONFIG_PACKAGE_ath10k-firmware-qca9984-ct is not set
CONFIG_PACKAGE_kmod-ath10k=y
CONFIG_ATH10K_LEDS=y
CONFIG_ATH10K_THERMAL=y

# exfat is patented
CONFIG_BUILD_PATENTED=y

CONFIG_FEED_sqm_scripts_nss=n

# NSS Drivers
CONFIG_PACKAGE_kmod-nss-ifb=y
CONFIG_PACKAGE_kmod-qca-mcs=y
CONFIG_PACKAGE_kmod-qca-nss-cfi-cryptoapi=y
CONFIG_PACKAGE_kmod-qca-nss-crypto=y
CONFIG_PACKAGE_kmod-qca-nss-drv=y
CONFIG_PACKAGE_kmod-qca-nss-drv-igs=y
CONFIG_PACKAGE_kmod-qca-nss-drv-l2tpv2=y
CONFIG_PACKAGE_kmod-qca-nss-drv-pppoe=y
CONFIG_PACKAGE_kmod-qca-nss-drv-pptp=y
CONFIG_PACKAGE_kmod-qca-nss-drv-qdisc=y
CONFIG_PACKAGE_kmod-qca-nss-drv-tun6rd=y
CONFIG_PACKAGE_kmod-qca-nss-drv-tunipip6=y
CONFIG_PACKAGE_kmod-qca-nss-gmac=y
CONFIG_PACKAGE_kmod-qca-nss-ecm-standard=y
CONFIG_PACKAGE_MAC80211_NSS_SUPPORT=y
CONFIG_PACKAGE_MAC80211_DEBUGFS=y

## SQM QoS nss
CONFIG_PACKAGE_sqm-scripts-nss=y

# Longer waiting for failsafe button push
CONFIG_IMAGEOPT=y
CONFIG_PREINITOPT=y
CONFIG_TARGET_PREINIT_TIMEOUT=5

# Busybox tweaks
CONFIG_BUSYBOX_CUSTOM=y
CONFIG_BUSYBOX_CONFIG_FEATURE_EDITING_SAVEHISTORY=y
CONFIG_BUSYBOX_CONFIG_FEATURE_EDITING_SAVE_ON_EXIT=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_FLAGS=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_REGEXP=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_WINCH=y

# Add-on programs
CONFIG_DROPBEAR_ECC=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_curl=y
CONFIG_PACKAGE_wget=y

# USB device mount & file systems support
CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_cryptsetup=y
CONFIG_PACKAGE_e2fsprogs=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_kmod-crypto-ecb=y
CONFIG_PACKAGE_kmod-crypto-xts=y
CONFIG_PACKAGE_kmod-crypto-iv=y
CONFIG_PACKAGE_kmod-crypto-misc=y
CONFIG_PACKAGE_kmod-crypto-user=y 
CONFIG_PACKAGE_kmod-dnsresolver=y
CONFIG_PACKAGE_kmod-fs-cifs=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-f2fs=y
CONFIG_PACKAGE_kmod-fs-hfs=y
CONFIG_PACKAGE_kmod-fs-hfsplus=y
CONFIG_PACKAGE_kmod-fs-msdos=y
CONFIG_PACKAGE_kmod-fs-nfs=y
CONFIG_PACKAGE_kmod-fs-nfs-common=y
CONFIG_PACKAGE_kmod-fs-nfs-v3=y
CONFIG_PACKAGE_kmod-fs-nfs-v4=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-nls-base=y
CONFIG_PACKAGE_kmod-nls-cp1250=y
CONFIG_PACKAGE_kmod-nls-cp437=y
CONFIG_PACKAGE_kmod-nls-cp850=y
CONFIG_PACKAGE_kmod-nls-iso8859-1=y
CONFIG_PACKAGE_kmod-nls-iso8859-15=y
CONFIG_PACKAGE_kmod-nls-utf8=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y
CONFIG_PACKAGE_kmod-fs-xfs=y
CONFIG_PACKAGE_libblkid=y
CONFIG_PACKAGE_ntfs-3g=y
CONFIG_PACKAGE_nfs-utils=y
CONFIG_PACKAGE_usbutils=y

# IPv6 support
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_6to4=y
CONFIG_PACKAGE_6rd=y

# IPv6 NAT support (ip6tables NAT extensions, ipt-nat6 and nf-nat6 kmods)
CONFIG_PACKAGE_ip6tables-mod-nat=y

# WLAN/WPS support
CONFIG_PACKAGE_hostapd-utils=y
CONFIG_WPA_MSG_MIN_PRIORITY=4
CONFIG_PACKAGE_wpad-openssl=y
# CONFIG_PACKAGE_wpad-basic-wolfssl is not set
# CONFIG_PACKAGE_libustream-wolfssl is not set

# SSL certificates
CONFIG_PACKAGE_ca-certificates=y

# Luci (SSL from OpenSSL)
CONFIG_PACKAGE_luci-ssl-openssl=y
CONFIG_PACKAGE_luci-app-commands=y
CONFIG_PACKAGE_luci-theme-openwrt-2020=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_luci-theme-material=y

# Luci statistics
CONFIG_PACKAGE_luci-app-statistics=y
CONFIG_PACKAGE_collectd-mod-cpufreq=y
CONFIG_PACKAGE_collectd-mod-exec=y
CONFIG_PACKAGE_collectd-mod-interface=y
CONFIG_PACKAGE_collectd-mod-iwinfo=y
CONFIG_PACKAGE_collectd-mod-load=y
CONFIG_PACKAGE_collectd-mod-memory=y
CONFIG_PACKAGE_collectd-mod-thermal=y
CONFIG_PACKAGE_collectd-mod-wireless=y
CONFIG_PACKAGE_collectd-mod-uptime=y

# DAWN
CONFIG_PACKAGE_luci-app-dawn=y

# OpenWISP for management via OpenSOHO
CONFIG_PACKAGE_openwisp-config=y
CONFIG_PACKAGE_openwisp-monitoring=y
CONFIG_PACKAGE_luci-app-openwisp=y

# store crashes from RAM
CONFIG_PACKAGE_kmod-ramoops=y
CONFIG_PACKAGE_kmod-pstore=y
CONFIG_PSTORE_CONSOLE=y

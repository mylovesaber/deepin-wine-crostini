#!/bin/bash
echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian stretch-backports main" >> /etc/apt/sources.list.d/stretch.list
dpkg --add-architecture i386
apt update
apt install -y \
    wine/stretch-backports \
    wine32/stretch-backports \
    wine64/stretch-backports \
    libwine/stretch-backports \
    libwine:i386/stretch-backports \
    fonts-wine/stretch-backports
cd /root
git clone https://gitee.com/wszqkzqk/deepin-wine-for-ubuntu.git
cd deepin-wine-for-ubuntu
apt install -y multiarch-support:i386 linux-libc-dev:i386 binfmt-support p7zip p7zip-full python-dbus python-gobject libxt6:i386
apt remove -y wine wine32 wine64 libwine libwine:i386 fonts-wine
wget http://security.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo8_1.5.2-0ubuntu5.18.04.3_i386.deb
wget http://ftp.cn.debian.org/debian/pool/main/g/glibc/libc6-dev_2.28-10_i386.deb
dpkg -i *deb
apt autoremove -y

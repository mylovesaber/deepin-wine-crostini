#!/bin/bash
wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/u/udis86/udis86_1.72-2_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-plugin-virtual/deepin-wine-plugin-virtual_1.0deepin3_all.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-plugin/deepin-wine-plugin_1.0deepin2_amd64.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-uninstaller/deepin-wine-uninstaller_0.1deepin2_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-fonts-wine_2.18-22~rc0_all.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-libwine-dbg_2.18-22~rc0_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-libwine-dev_2.18-22~rc0_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-libwine_2.18-22~rc0_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine-binfmt_2.18-22~rc0_all.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine32-preloader_2.18-22~rc0_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine32-tools_2.18-22~rc0_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine32_2.18-22~rc0_i386.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine/deepin-wine_2.18-22~rc0_all.deb

wget -P /root/deepin-wine-update http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin-wine-helper/deepin-wine-helper_1.2deepin8_i386.deb

apt install -y gcc-8:i386 cpp:i386 gcc:i386 fonts-noto-cjk zenity zenity-common libnotify4 libwebkit2gtk-4.0-37
dpkg -i /root/deepin-wine-update/*
apt autoremove -y

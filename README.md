# deepin-wine-crostini
ChromeOS子系统crostini安装deepin-wine环境完整教程
>原创教程，转载请标明出处
>
>!!!别吐槽脚本写的烂，这根本就是命令堆起来的>_<

# 这东西因为现有配置的环境不同人不同环境，翻车点多，必须在执行脚本以前先在系统设置中将现在正常使用的系统备份到外置tf卡或者chromeos内，而非crostini内。

实际效果预览图：
微信+双拼中文
![微信](https://s1.ax1x.com/2020/03/16/8Y0K1O.jpg)
QQ（拍照时还未装输入法）
![QQ](https://s1.ax1x.com/2020/03/16/8Y0etx.jpg)

### Crostini是什么
Crostini是谷歌官方定的名字，实为利用KVM技术运行在ChromeOS中的debian minimal魔改版，在ChromeOS stable版本高于80时使用的是debian10，用于加强Chomebook作为生产力的筹码，现在的Chromebook运行的是ChomeOS（Gentoo）+Android9+debian10三合一系统，由于其相比原版debian10的特殊性，故专门开一个仓库解决问题。理论上支持所有升级了最低stable 80版本ChromeOS的X86 Chromebook。

### 使用linux qq 微信的原因

ChromeOS内置中文输入法十几种，没有双拼。。。更没有小鹤双拼，十几种输入法全是港澳台专用的，大陆只有恶心死人不偿命的无码表五笔和全拼，安卓qq微信都能装上，但输入法是默认调用ChromeOS的中文输入法，只有通过adb指定输入法后才可以把笔记本掰到平板模式下触屏使用纯双拼（是的，安卓最强双拼智能输入法————百度输入法不能挂接码表，登录账号不能同步词库）这直接导致我必须把全部希望寄托于crostini下，否则字都不会打了。

### 前期准备
1. 必须确保你已经将用户切换到root模式下（crostini下sudo -i和直接su都行，脚本中没有sudo提权）
2. 安卓运行翻墙软件（源里面有谷歌的，必须翻）
3. 命令行依次运行： 
```bash
#谷歌玩蛇皮，root下dpkg居然没有把sbin系列目录添加进系统变量
apt install wget
echo "export PATH=\$PATH:/usr/local/sbin:/usr/sbin:/sbin" >> /root/.bashrc
source /root/.bashrc
apt install xfonts-wqy fonts-wqy-zenhei fonts-wqy-microhei -y
```
以下所有命令均为重定向，安装后直接通过 **dpkg -i** 安装需要的软件，此时如果提示报错，请提交脚本自动生成的日志并且贴上安装的软件提示的报错信息

### 全新安装最新版本deepin-wine环境

估计看到这教程的多半是全新安装的，直接用这个就行，后面的两个不用看了
**用法：**
```bash
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/mylovesaber/deepin-wine-crostini/master/deepin-wine-fresh-installation.sh) >/root/installation.log
```

### 安装wszqkzqk原版deepin-wine-ubuntu项目

2020年3月16日实测已过时，无法使用deepin官方源中的最新版微信，但这是配置deepin-wine环境的基础，如果有先照着我在他项目的issue中提供的写法一步步做的老哥可以参考下：https://github.com/wszqkzqk/deepin-wine-ubuntu/issues/245
**用法：**
```bash
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/mylovesaber/deepin-wine-crostini/master/default-deepin-wine-ubuntu-wszqkzqk.sh) >/root/installation.log
```

### 在wszqkzqk原版项目基础上更新deepin-wine环境

更新原因是deepin官方源最新版微信无法安装提示依赖报错
**用法：**
```bash
bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/mylovesaber/deepin-wine-crostini/master/default-deepin-wine-update.sh) >/root/installation.log
```

### 结尾

* 感谢debian wiki的介绍，给了我解决问题的思路
* 感谢wszqkzqk小哥，初中还是高中时就把deepin官方适配的linux可用的qq微信等软件率先推广到pacman系和apt系
* 如果我所做的努力可以帮到一样使用Chromebook的朋友，右上角给我点个star就行，多谢啦^_^

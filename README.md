[简体中文](README-zh_CN.md)

## About

This repo is aimed fix the problems after installing `WPS Office`

1. Fixed the [problem](http://packages.deepin.com/deepin/pool/non-free/t/ttf-wps-fonts/) with missing fonts
2. Fixed the [problem](https://bbs.wps.cn/topic/3137) with bold fonts display: using lower version of [`libfreetype`](https://packages.debian.org/zh-tw/bookworm/libfreetype6)

## STATUS

Copr build: [![Copr build status](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fix/package/wps-office-fix/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fix/package/wps-office-fix/)

## Installation

> [!NOTE]
>
> For wps office version 11, You need install missing fonts and lower version of `libfreetype`. And you need only missing fonts for version 12.

### Manual Installation

```sh
git clone https://github.com/JamesBrosy/wps-office-fix.git
cd wps-office-fix
bash install_fonts.sh
bash install_libs.sh
```

### Fedora Installation

```sh
sudo dnf copr enable clarlok/wps-office-fix
sudo dnf -y install wps-office-fix            # for version 11
sudo dnf -y install wps-office-missing-fonts  # for version 12
```


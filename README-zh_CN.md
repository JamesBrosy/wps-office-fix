## 关于

此仓库包含 wps 缺失字体，用于解决 wps linux 版本因为字体缺失而报错。

## 状态

Copr 构建：[![Copr build status](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fonts-extra/package/wps-office-fonts-extra/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fonts-extra/package/wps-office-fonts-extra/)

## 安装方法

### 手动安装

下载[最新版本](https://github.com/JamesBrosy/wps-office-fonts-extra/releases/latest)，并解压到 `~/.local/share/fonts`

### fedora 安装

```sh
sudo dnf copr enable clarlok/wps-office-fonts-extra
sudo dnf -y install wps-office-fonts-extra
```


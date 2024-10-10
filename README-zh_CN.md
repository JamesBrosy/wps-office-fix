## 关于

**此仓库旨在修复wps安装后出现的一些问题**

1. 修复了[缺失字体问题](http://packages.deepin.com/deepin/pool/non-free/t/ttf-wps-fonts/)
2. 修复了[粗体字显示问题](https://bbs.wps.cn/topic/3137)：使用低版本 [`libfreetype`](https://packages.debian.org/zh-tw/bookworm/libfreetype6)

## 状态

Copr 构建：[![Copr build status](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fix/package/wps-office-fix/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fix/package/wps-office-fix/)

## 安装方法

### 手动安装

```sh
git clone https://github.com/JamesBrosy/wps-office-fix.git
cd wps-office-fix && bash install.sh
```

### fedora 安装

```sh
sudo dnf copr enable clarlok/wps-office-fix
sudo dnf -y install wps-office-fix
```


## 关于

**此仓库旨在修复wps安装后出现的一些问题**

1. 修复了[缺失字体问题](http://packages.deepin.com/deepin/pool/non-free/t/ttf-wps-fonts/)
2. 修复了[粗体字显示问题](https://bbs.wps.cn/topic/3137)：使用低版本 [`libfreetype`](https://packages.debian.org/zh-tw/bookworm/libfreetype6)
3. 更多细节请参考[arch wiki](https://wiki.archlinuxcn.org/wiki/WPS_Office)

## 状态

Copr 构建：[![Copr build status](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fix/package/wps-office-fix/status_image/last_build.png)](https://copr.fedorainfracloud.org/coprs/clarlok/wps-office-fix/package/wps-office-fix/)

## 安装方法

> [!NOTE]
>
> WPS Office 版本 11 需要安装缺失字体和低版本 `libfreetype`，版本 12 只需要安装缺失字体。

### 手动安装

```sh
git clone https://github.com/JamesBrosy/wps-office-fix.git
cd wps-office-fix
bash install_fonts.sh
bash install_libs.sh
```

### fedora 安装

```sh
sudo dnf copr enable clarlok/wps-office-fix
sudo dnf -y install wps-office-fix           # 版本 11
sudo dnf -y install wps-office-missing-fonts # 版本 12
```


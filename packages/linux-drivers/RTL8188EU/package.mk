# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="RTL8188EU"
PKG_VERSION="b02c92bc92e22fd8b51c9acd6d602637cfce7256"
PKG_SHA256="e855e210b27fc33212c558d34c32e0a5ccc32209d5c7e3f71fcf67695c224594"
PKG_LICENSE="GPL"
# realtek: PKG_SITE="http://www.realtek.com.tw/downloads/downloadsView.aspx?Langid=1&PFid=48&Level=5&Conn=4&ProdID=274&DownTypeID=3&GetDown=false&Downloads=true"
PKG_SITE="https://github.com/lwfinger/rtl8188eu"
PKG_URL="https://github.com/lwfinger/rtl8188eu/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Realtek RTL81xxEU Linux 3.x driver"
PKG_IS_KERNEL_PKG="yes"

pre_make_target() {
  unset LDFLAGS
}

make_target() {
  make modules \
       ARCH=${TARGET_KERNEL_ARCH} \
       KSRC=$(kernel_path) \
       CROSS_COMPILE=${TARGET_KERNEL_PREFIX} \
       CONFIG_POWER_SAVING=n
}

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
    cp *.ko ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
}

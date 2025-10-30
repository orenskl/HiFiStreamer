# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="isodate"
PKG_VERSION="0.6.1"
PKG_SHA256="f12920e246edabb23a7079be33cc40f84707a0c23054e3ae3b1fc81e262fa543"
PKG_LICENSE="BSD"
PKG_SITE="https://github.com/gweis/isodate"
PKG_URL="https://github.com/gweis/isodate/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools"
PKG_LONGDESC="ISO 8601 date/time parser"
PKG_TOOLCHAIN="manual"

make_target() {
  python3 setup.py build --cross-compile
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
}

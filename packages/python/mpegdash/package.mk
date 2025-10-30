# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="mpegdash"
PKG_VERSION="0.4.0"
PKG_SHA256="4128520c920d55906430a3540ca0b78db184554d1726bc91119f1fbc07aeb61a"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/sangwonl/python-mpegdash"
PKG_URL="https://github.com/sangwonl/python-mpegdash/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools"
PKG_LONGDESC="MPEG-DASH MPD(Media Presentation Description) Parser"
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

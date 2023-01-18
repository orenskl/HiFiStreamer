# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="tidalapi"
PKG_VERSION="0.7.0"
PKG_SHA256="287a7f61df4b127eb68432af7f5a62185144f6c2116393fb65df48c3b5b9157b"
PKG_LICENSE="LGPLv3"
PKG_SITE="https://pypi.org/project/tidalapi/"
PKG_URL="https://github.com/tamland/python-tidal/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools python-dateutil"
PKG_LONGDESC="Python API for TIDAL music streaming service"
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

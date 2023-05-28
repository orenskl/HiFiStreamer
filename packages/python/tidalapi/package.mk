# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="tidalapi"
PKG_VERSION="0.7.1"
PKG_SHA256="7ce1a8e89253f3580ef4a8d48206580da233780e602c02b52f5acb6b06c9201e"
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

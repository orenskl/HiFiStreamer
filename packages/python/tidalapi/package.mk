# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="tidalapi"
PKG_VERSION="0.7.3"
PKG_SHA256="85cca90e753414ff6b8ad58d57d579045d80f04dd123f22a4af710a8d59abfe8"
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

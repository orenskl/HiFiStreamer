# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026 Oren Sokoler

PKG_NAME="mopidy-dleyna"
PKG_VERSION="2.0.2"
PKG_SHA256="6e5736f9e622d3ad1c54eefb5ebb1dabb5541528137925af9d72e1b2c4013684"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-dLeyna/"
PKG_URL="https://files.pythonhosted.org/packages/54/16/1d99d34de21bf2c457909a0f2e2061afb3e7ca8d28f442ffbe88763e9d38/Mopidy-dLeyna-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools mopidy pykka uritools dleyna-server"
PKG_LONGDESC="Mopidy extension for playing music from Digital Media Servers"
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

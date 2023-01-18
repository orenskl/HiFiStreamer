# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="python-dateutil"
PKG_VERSION="2.8.2"
PKG_SHA256="0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/python-dateutil/"
PKG_URL="https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools six"
PKG_LONGDESC="The dateutil module provides powerful extensions to the standard datetime module, available in Python."
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

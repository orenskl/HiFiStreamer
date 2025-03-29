# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="uritools"
PKG_VERSION="4.0.3"
PKG_SHA256="ee06a182a9c849464ce9d5fa917539aacc8edd2a4924d1b7aabeeecabcae3bc2"
PKG_LICENSE="MIT"
PKG_SITE="https://pypi.org/project/uritools"
PKG_URL="https://files.pythonhosted.org/packages/d3/43/4182fb2a03145e6d38698e38b49114ce59bc8c79063452eb585a58f8ce78/uritools-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3"
PKG_LONGDESC="URI parsing, classification and composition"
PKG_TOOLCHAIN="manual"

make_target() {
  python3 setup.py build
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
}

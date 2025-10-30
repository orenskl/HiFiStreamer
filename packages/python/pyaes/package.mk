# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="pyaes"
PKG_VERSION="1.6.1"
PKG_SHA256="d8be4e9e446861308ef028f9c9655686e13e0f4027d37f95443e4f32996394ac"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/ricmoo/pyaes"
PKG_URL="https://github.com/ricmoo/pyaes/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools"
PKG_LONGDESC="Pure-Python implementation of AES block-cipher and common modes of operation"
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

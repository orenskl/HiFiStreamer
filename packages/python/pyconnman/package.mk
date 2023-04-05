# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="pyconnman"
PKG_VERSION="0.2.0"
PKG_SHA256="4bf6a8a89a5c362dd16d3bf1d71db36d43ac82c6221338a8333fb73770331142"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/pyconnman/"
PKG_URL="https://github.com/liamw9534/pyconnman/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:target dbus-python"
PKG_LONGDESC="A library for managing network connectivity using Python, ConnMan and DBus."
PKG_TOOLCHAIN="manual"

pre_make_target() {
  export PYTHONXCPREFIX="${SYSROOT_PREFIX}/usr"
}

make_target() {
  python3 setup.py build --cross-compile
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
}

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="tornado"
PKG_VERSION="6.2.0"
PKG_SHA256="c2e902e4771eb90b057c7629fa239a59ecae63052919c3b5e61253f2c8a5f0d6"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/tornado/"
PKG_URL="https://github.com/tornadoweb/${PKG_NAME}/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host"
PKG_LONGDESC="Tornado is a Python web framework and asynchronous networking library"
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

  rm -rf ${INSTALL}/usr/lib/python*/site-packages/*/tests
}

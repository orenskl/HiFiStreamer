# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="requests"
PKG_VERSION="2.28.1"
PKG_SHA256="e1385b9750f2cd4093762050dae0bdb8554577fd09e8a3ef88cace30a1f1eba5"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/requests/"
PKG_URL="https://github.com/psf/${PKG_NAME}/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host certifi idna urllib3 charset-normalizer"
PKG_LONGDESC="Requests is a simple, yet elegant, HTTP library"
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

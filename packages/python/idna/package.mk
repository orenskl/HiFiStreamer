# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="idna"
PKG_VERSION="3.3"
PKG_SHA256="34b145ffe35b7872e9a3e0abc3a3a8330db90a0fd58db978725fd05c5c7d9f88"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/idna/"
PKG_URL="https://github.com/kjd/${PKG_NAME}/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host"
PKG_LONGDESC="Support for the Internationalized Domain Names in Applications (IDNA) protocol as specified in RFC 5891"
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

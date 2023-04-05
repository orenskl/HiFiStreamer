# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="dbus-python"
PKG_VERSION="1.2.18"
PKG_SHA256="92bdd1e68b45596c833307a5ff4b217ee6929a1502f5341bae28fd120acf7260"
PKG_LICENSE="MIT"
PKG_SITE="http://www.freedesktop.org/wiki/Software/DBusBindings"
PKG_URL="https://dbus.freedesktop.org/releases/dbus-python/dbus-python-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:target distutilscross"
PKG_LONGDESC="Python bindings for libdbus"
PKG_TOOLCHAIN="manual"

pre_make_target() {
  export PYTHONXCPREFIX="${SYSROOT_PREFIX}/usr"
}

make_target() {
  cd ${PKG_BUILD}
  python3 setup.py build --cross-compile
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
}

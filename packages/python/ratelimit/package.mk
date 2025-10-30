# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="ratelimit"
PKG_VERSION="2.2.1"
PKG_SHA256="5e37a611c341dde4bf3c58d88f383a91c04af1c9e6fe958c9a8ce4394a492fc9"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/tomasbasham/ratelimit"
PKG_URL="https://github.com/tomasbasham/ratelimit/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools"
PKG_LONGDESC="API Rate Limit Decorator"
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

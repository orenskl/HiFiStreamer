# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy"
PKG_VERSION="3.4.1"
PKG_SHA256="a06337cc2e425361fb312656b9480fdc3f7994b5d07bb05d9f56c02b393331a3"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/Mopidy/"
PKG_URL="https://github.com/${PKG_NAME}/${PKG_NAME}/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:target distutilscross:host tornado requests pykka gstreamer gst-python gst-plugins-base gst-plugins-good"
PKG_LONGDESC="Mopidy is an extensible music server written in Python."
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

  # Copy config files
  mkdir -p ${INSTALL}/usr/share/mopidy/conf.d
    cp ${PKG_DIR}/default.d/*.conf ${INSTALL}/usr/share/mopidy/conf.d

  mkdir -p ${INSTALL}/usr/config/mopidy
    cp -PR ${PKG_DIR}/config/*.conf ${INSTALL}/usr/config/mopidy

  mkdir -p ${INSTALL}/usr/cache/hifistreamer
  	cp ${PKG_DIR}/config/network_wait ${INSTALL}/usr/cache/hifistreamer

}

post_install() {
  enable_service mopidy.service
  enable_service waitonnetwork.service
}

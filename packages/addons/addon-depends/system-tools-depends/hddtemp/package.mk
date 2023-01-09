# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="hddtemp"
PKG_VERSION="e16aed6d0145d7ad8b3308dd0b9199fc701c0417" # Jul 6, 2010
PKG_SHA256="5d5af74ba7449b6e56a8f872a0e10d654a512ed65d62beaef1575b0c1826d9f3"
PKG_LICENSE="GPL"
PKG_SITE="https://savannah.nongnu.org/projects/hddtemp"
PKG_URL="https://github.com/guzu/hddtemp/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A utility that gives you the temperature of your hard drive by reading S.M.A.R.T.."
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_TARGET="--with-db-path=/storage/.kodi/addons/virtual.system-tools/data/hddtemp.db"

post_makeinstall_target() {
  mkdir -p ${INSTALL}/usr/share/misc
  cp ${PKG_DIR}/db/* ${INSTALL}/usr/share/misc
}

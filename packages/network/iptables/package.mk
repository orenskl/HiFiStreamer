# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="iptables"
PKG_VERSION="1.8.8"
PKG_SHA256="71c75889dc710676631553eb1511da0177bbaaf1b551265b912d236c3f51859f"
PKG_LICENSE="GPL"
PKG_SITE="https://www.netfilter.org/"
PKG_URL="https://www.netfilter.org/projects/iptables/files/${PKG_NAME}-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_TARGET="toolchain linux:host libmnl libnftnl"
PKG_LONGDESC="IP packet filter administration."
PKG_TOOLCHAIN="autotools"

post_configure_target() {
  libtool_remove_rpath libtool
}

post_makeinstall_target() {
  mkdir -p ${INSTALL}/usr/config/iptables/
    cp -PR ${PKG_DIR}/config/README ${INSTALL}/usr/config/iptables/

  mkdir -p ${INSTALL}/etc/iptables/
    cp -PR ${PKG_DIR}/config/* ${INSTALL}/etc/iptables/

  mkdir -p ${INSTALL}/usr/lib/libreelec
    cp ${PKG_DIR}/scripts/iptables_helper ${INSTALL}/usr/lib/libreelec
}

post_install() {
  enable_service iptables.service
}

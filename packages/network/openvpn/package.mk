# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="openvpn"
PKG_VERSION="2.4.10"
PKG_SHA256="cf285395a679f0b68c0acde2cb2480e8ead6ca07ff14c1bc52ae65a1243aa377"
PKG_LICENSE="GPL"
PKG_SITE="https://openvpn.net"
PKG_URL="https://swupdate.openvpn.org/community/releases/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain lzo openssl"
PKG_LONGDESC="A full featured SSL VPN software solution that integrates OpenVPN server capabilities."

PKG_CONFIGURE_OPTS_TARGET="ac_cv_have_decl_TUNSETPERSIST=no \
                           --disable-server \
                           --disable-plugins \
                           --enable-iproute2 IPROUTE=/sbin/ip \
                           --enable-management \
                           --enable-fragment \
                           --disable-multihome \
                           --disable-port-share \
                           --disable-debug"

post_makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    ln -sf ../sbin/openvpn ${INSTALL}/usr/bin/openvpn
}

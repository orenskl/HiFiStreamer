# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2015 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="proftpd"
PKG_VERSION="1.3.8"
PKG_SHA256="f7139e7377a2cb059b8b9b14d76a6df5f440e3181cb15ae890d43bbcae574748"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.proftpd.org/"
PKG_URL="https://github.com/proftpd/proftpd/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libcap openssl ncurses pcre2"
PKG_SECTION="service"
PKG_SHORTDESC="ProFTPD: a FTP server for linux"
PKG_LONGDESC="ProFTPD (${PKG_VERSION}): is a secure and configurable FTP server with SSL/TLS support"
PKG_BUILD_FLAGS="-sysroot"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="ProFTPD Server"
PKG_ADDON_TYPE="xbmc.service"

ADDON_DIR="/storage/.kodi/addons/service.proftpd"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --enable-openssl \
                           --with-modules=mod_tls \
                           --enable-nls \
                           --localedir=${ADDON_DIR}/locale \
                           --enable-sendfile \
                           --enable-facl \
                           --enable-autoshadow \
                           --enable-ctrls \
                           --enable-ipv6 \
                           --enable-nls \
                           --enable-pcre2 \
                           --enable-largefile \
                           install_user=$(id -u) \
                           install_group=$(id -g)"

pre_configure_target() {
  export CFLAGS="${CFLAGS} -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64"
  cd ..
  rm -rf .${TARGET_NAME}
}

addon() {
  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/bin
    cp ${PKG_INSTALL}/usr/sbin/proftpd ${ADDON_BUILD}/${PKG_ADDON_ID}/bin
    cp ${PKG_INSTALL}/usr/bin/ftpwho ${ADDON_BUILD}/${PKG_ADDON_ID}/bin
    cp ${PKG_INSTALL}/usr/bin/ftptop ${ADDON_BUILD}/${PKG_ADDON_ID}/bin

  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/locale
    for i in ${PKG_INSTALL}/storage/.kodi/addons/${PKG_ADDON_ID}/locale/*; do
      cp ${i}/LC_MESSAGES/proftpd.mo ${ADDON_BUILD}/${PKG_ADDON_ID}/locale/${i##*/}.mo
    done
}

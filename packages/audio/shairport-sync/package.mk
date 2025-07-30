# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="shairport-sync"
PKG_VERSION="4.2"
PKG_SHA256="649d95eede8b9284b2e8b9c97d18c1c64cffae0a6c75bc4f03e3ae494a3e25b6"
PKG_LICENSE="OSS"
PKG_SITE="https://github.com/mikebrady/shairport-sync"
PKG_URL="https://github.com/mikebrady/shairport-sync/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain alsa-lib avahi ffmpeg libconfig libdaemon libgcrypt libplist libalac libsodium nqptp openssl popt util-linux xxd:host"
PKG_LONGDESC="AirPlay audio player."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_TARGET="--with-alsa \
                           --with-avahi \
                           --with-metadata \
                           --with-pipe \
                           --with-pkg-config \
                           --with-ssl=openssl \
                           --with-stdout \
						               --with-apple-alac \
                           --with-dbus-interface \
                           --with-configfiles \
                           --with-airplay-2"

post_makeinstall_target() {
    rm ${INSTALL}/etc/shairport-sync.conf
    rm ${INSTALL}/etc/shairport-sync.conf.sample

    mkdir -p ${INSTALL}/usr/config/shairport-sync
    cp -PR ${PKG_DIR}/config/*.conf ${INSTALL}/usr/config/shairport-sync
}

post_install() {
  enable_service shairport-sync.service
}

# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="nginx"
PKG_VERSION="1.22.1"
PKG_SHA256="9ebb333a9e82b952acd3e2b4aeb1d4ff6406f72491bab6cd9fe69f0dea737f31"
PKG_LICENSE="OSS"
PKG_SITE="https://nginx.org"
PKG_URL="https://nginx.org/download/nginx-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="nginx [engine x] is an HTTP and reverse proxy server"

configure_target() {
	cd "${PKG_BUILD}"
	./configure --prefix=/usr \
	            --http-log-path=/var/log/access.log \
				--error-log-path=/var/log/error.log \
				--pid-path=/var/run/nginx.pid \
				--lock-path=/var/lock/nginx.lock \
				--conf-path=/etc/nginx.conf \
				--http-client-body-temp-path=/var/spool/nginx/client_body_temp \
				--http-proxy-temp-path=/var/spool/nginx/proxy_temp \
				--http-fastcgi-temp-path=/var/spool/nginx/fastcgi_temp \
				--http-uwsgi-temp-path=/var/spool/nginx/uwsgi_temp \
				--http-scgi-temp-path=/var/spool/nginx/scgi_temp \
				--with-cc=${TOOLCHAIN}/bin/${TARGET_NAME}-gcc
}

post_makeinstall_target() {

  rm -rf ${INSTALL}/etc/*
  rm -rf ${INSTALL}/usr/html

  cp ${PKG_DIR}/config/nginx.conf ${INSTALL}/etc/nginx.conf

}

post_install() {
  enable_service nginx.service
}

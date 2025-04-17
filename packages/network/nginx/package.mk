# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="nginx"
PKG_VERSION="1.27.4"
PKG_SHA256="294816f879b300e621fa4edd5353dd1ec00badb056399eceb30de7db64b753b2"
PKG_LICENSE="OSS"
PKG_SITE="https://nginx.org"
PKG_URL="https://nginx.org/download/nginx-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="nginx [engine x] is an HTTP and reverse proxy server"

configure_target() {
	cd "${PKG_BUILD}"
	if [ "${DEVICE}" != "Generic" ]; then
  		CROSSFLAGS=" --crossbuild=Linux:qemu"
		CROSSFLAGS+=" --with-int=8"
		CROSSFLAGS+=" --with-long=8"		   
		CROSSFLAGS+=" --with-long-long=8"
		CROSSFLAGS+=" --with-ptr-size=8"    
		CROSSFLAGS+=" --with-sig-atomic-t=8"
		CROSSFLAGS+=" --with-size-t=8"
		CROSSFLAGS+=" --with-off-t=8"
		CROSSFLAGS+=" --with-time-t=8"
	fi
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
				--with-cc=${CC} ${CROSSFLAGS}
}

post_makeinstall_target() {

  rm -rf ${INSTALL}/etc/*
  rm -rf ${INSTALL}/usr/html

  cp ${PKG_DIR}/config/nginx.conf ${INSTALL}/etc/nginx.conf

}

post_install() {
  enable_service nginx.service
}

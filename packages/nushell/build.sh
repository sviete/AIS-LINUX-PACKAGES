TERMUX_PKG_HOMEPAGE=https://www.nushell.sh
TERMUX_PKG_DESCRIPTION="A new type of shell operating on structured data"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.25.1
TERMUX_PKG_SRCURL=https://github.com/nushell/nushell/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=60a0e9967862b79b7323c2ce41760b59248b7a7c39a44a49cab47d3086ab2f0b
TERMUX_PKG_DEPENDS="openssl, zlib"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_BLACKLISTED_ARCHES="x86_64"


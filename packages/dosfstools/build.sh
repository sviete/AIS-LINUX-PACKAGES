TERMUX_PKG_HOMEPAGE=https://github.com/dosfstools/dosfstools
TERMUX_PKG_DESCRIPTION="DOS file system utilities"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=4.2
TERMUX_PKG_SRCURL=https://github.com/dosfstools/dosfstools/releases/download/v${TERMUX_PKG_VERSION}/dosfstools-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=64926eebf90092dca21b14259a5301b7b98e7b1943e8a201c7d726084809b527
TERMUX_PKG_DEPENDS="libiconv"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-compat-symlinks"


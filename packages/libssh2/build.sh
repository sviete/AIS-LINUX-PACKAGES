TERMUX_PKG_HOMEPAGE=https://www.libssh2.org
TERMUX_PKG_DESCRIPTION="Client-side library implementing the SSH2 protocol"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.9.0
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://www.libssh2.org/download/libssh2-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=d5fb8bd563305fd1074dda90bd053fb2d29fc4bce048d182f96eaa466dfadafd
TERMUX_PKG_DEPENDS="openssl, zlib"
TERMUX_PKG_BREAKS="libssh2-dev"
TERMUX_PKG_REPLACES="libssh2-dev"


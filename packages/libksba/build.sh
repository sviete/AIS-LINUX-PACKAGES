TERMUX_PKG_HOMEPAGE=https://gnupg.org/related_software/libksba/
TERMUX_PKG_DESCRIPTION="Library for using X.509 certificates and CMS (Cryptographic Message Syntax) easily accessible"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.5.1
TERMUX_PKG_SRCURL=https://www.gnupg.org/ftp/gcrypt/libksba/libksba-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=b0f4c65e4e447d9a2349f6b8c0e77a28be9531e4548ba02c545d1f46dc7bf921
TERMUX_PKG_DEPENDS="libgpg-error"
TERMUX_PKG_BREAKS="libksba-dev"
TERMUX_PKG_REPLACES="libksba-dev"


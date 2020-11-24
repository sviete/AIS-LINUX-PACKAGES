TERMUX_PKG_HOMEPAGE=http://www.winfield.demon.nl/
TERMUX_PKG_DESCRIPTION="A free MS Word reader"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=0.37
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=http://www.winfield.demon.nl/linux/antiword-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=8e2c000fcbc6d641b0e6ff95e13c846da3ff31097801e86702124a206888f5ac
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_MAKE_INSTALL_TARGET="global_install"
TERMUX_PKG_RM_AFTER_INSTALL="bin/kantiword"


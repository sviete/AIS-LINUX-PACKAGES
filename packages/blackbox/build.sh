TERMUX_PKG_HOMEPAGE=https://github.com/StackExchange/blackbox
TERMUX_PKG_DESCRIPTION="Safely store secrets in Git/Mercurial/Subversion"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Rabby Sheikh @xploitednoob"
TERMUX_PKG_VERSION=2.0.0
TERMUX_PKG_SRCURL=https://github.com/StackExchange/blackbox/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=0a8fee39dc46436472528ea3a5743c42ebefc068519545fe6fca57041f42deae
TERMUX_PKG_DEPENDS="gnupg"
TERMUX_PKG_SUGGESTS="git, subversion"
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_MAKE_INSTALL_TARGET="copy-install"


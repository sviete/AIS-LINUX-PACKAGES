TERMUX_PKG_HOMEPAGE=https://gitlab.com/timvisee/ffsend
TERMUX_PKG_DESCRIPTION="A fully featured Firefox Send client"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.2.71
TERMUX_PKG_SRCURL=https://gitlab.com/timvisee/ffsend/-/archive/v$TERMUX_PKG_VERSION/ffsend-v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=f9556b2dc98ff797fd3d5f67ebebda9cbc123bac25eee2cfd3326759fff03c4e
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--no-default-features --features crypto-openssl,send2,send3,history,archive,qrcode,urlshorten,infer-command"


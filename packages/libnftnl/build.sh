TERMUX_PKG_HOMEPAGE=https://www.netfilter.org/projects/libnftnl/
TERMUX_PKG_DESCRIPTION="Netfilter library providing interface to the nf_tables subsystem"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.1.9
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=http://netfilter.org/projects/libnftnl/files/libnftnl-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=e9b21a6f9a41f9e72aff696cc842e4a9a78ec8d281aec188f3e2b7a21db94b9a
TERMUX_PKG_DEPENDS="libmnl"
TERMUX_PKG_BREAKS="libnftnl-dev"
TERMUX_PKG_REPLACES="libnftnl-dev"


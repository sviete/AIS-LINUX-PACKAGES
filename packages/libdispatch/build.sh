TERMUX_PKG_HOMEPAGE=https://github.com/apple/swift-corelibs-libdispatch
TERMUX_PKG_DESCRIPTION="The libdispatch project, for concurrency on multicore hardware"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@buttaface"
_VERSION=5.3.3
TERMUX_PKG_VERSION=1:${_VERSION}
TERMUX_PKG_SRCURL=https://github.com/apple/swift-corelibs-libdispatch/archive/swift-${_VERSION}-RELEASE.tar.gz
TERMUX_PKG_SHA256=84a482afefdcda26c7dc83e3b75e662ed7705786a34a6b4958c0cdc6cace2c46
TERMUX_PKG_DEPENDS="libc++, libblocksruntime"


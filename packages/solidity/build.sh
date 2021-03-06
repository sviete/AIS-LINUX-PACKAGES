TERMUX_PKG_HOMEPAGE=https://solidity.readthedocs.io
TERMUX_PKG_DESCRIPTION="An Ethereum smart contract-oriented language."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.8.6
TERMUX_PKG_SRCURL=https://github.com/ethereum/solidity/releases/download/v${TERMUX_PKG_VERSION}/solidity_${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=523c83417feb5b6c4b5531ce903ed60251ec9893ed665522a20ba027906038f5
TERMUX_PKG_DEPENDS="boost-static"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DUSE_Z3=OFF -DUSE_CVC4=OFF"
TERMUX_CMAKE_BUILD="Unix Makefiles"


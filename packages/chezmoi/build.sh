TERMUX_PKG_HOMEPAGE=https://chezmoi.io
TERMUX_PKG_DESCRIPTION="Manage your dotfiles across multiple machines"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Henrik Grimler @Grimler91"
TERMUX_PKG_VERSION=1.8.9
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/twpayne/chezmoi/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6e9d341672bc375ad2e9594a689c0c8ae8ebad0c964d699dfbd408fc93058b93
termux_step_make() {
	termux_setup_golang
	cd "$TERMUX_PKG_SRCDIR"
	mkdir -p "${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne"
	cp -a "${TERMUX_PKG_SRCDIR}" "${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne/chezmoi"
	cd "${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne/chezmoi"
	go get -d -v
	go build -tags noupgrade,noembeddocs \
		-ldflags "-X github.com/twpayne/chezmoi/cmd.DocsDir=$TERMUX_PREFIX/share/doc/chezmoi -X main.version=${TERMUX_PKG_VERSION}" .
}
termux_step_make_install() {
	install -Dm700 ${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne/chezmoi/chezmoi $TERMUX_PREFIX/bin/chezmoi
	mkdir -p $TERMUX_PREFIX/share/bash-completions \
		$TERMUX_PREFIX/share/fish/completions \
		$TERMUX_PREFIX/share/doc/chezmoi
	install ${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne/chezmoi/completions/chezmoi-completion.bash \
		$TERMUX_PREFIX/share/bash-completions/chezmoi
	install ${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne/chezmoi/completions/chezmoi.fish \
		$TERMUX_PREFIX/share/fish/completions/chezmoi.fish
	install ${TERMUX_PKG_BUILDDIR}/src/github.com/twpayne/chezmoi/docs/{FAQ,HOWTO,QUICKSTART,REFERENCE}.md \
		$TERMUX_PREFIX/share/doc/chezmoi/
}

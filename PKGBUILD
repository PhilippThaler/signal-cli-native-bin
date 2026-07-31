# Maintainer: Philipp Thaler <aur@thaler.fyi>
pkgname=signal-cli-native-bin
pkgver=0.14.5
pkgrel=1
pkgdesc="signal-cli provides a commandline and dbus interface for the Signal messenger (GraalVM native binary)"
arch=('x86_64')
url="https://github.com/AsamK/signal-cli"
license=('GPL-3.0-only')
provides=('signal-cli')
conflicts=('signal-cli')

source=("https://github.com/AsamK/signal-cli/releases/download/v$pkgver/signal-cli-$pkgver-Linux-native.tar.gz"
        "https://github.com/AsamK/signal-cli/releases/download/v$pkgver/signal-cli-$pkgver-Linux-native.tar.gz.asc")
sha256sums=('39dc9e483da0d69151065e87aee8486d7a8bc67e0d3e9994c851269c1bfd80e3'
            'SKIP')
sha512sums=('fe4447e85e003a44203b406b5fa569c1fcf0eac61fb8165e04624d0906a2278463d56442f130713e48f6b9069dcc01a5970346e39333276b006250b2a581a227'
            'SKIP')
validpgpkeys=('FA10826A74907F9EC6BBB7FC2BA2CD21B5B09570')

package() {
    install -Dm755 "$srcdir/signal-cli" "$pkgdir/usr/bin/signal-cli"
}

# Maintainer: Philipp Thaler <aur@thaler.fyi>
pkgname=signal-cli-native-bin
pkgver=0.14.8
pkgrel=1
pkgdesc="signal-cli provides a commandline and dbus interface for the Signal messenger (GraalVM native binary)"
arch=('x86_64')
url="https://github.com/AsamK/signal-cli"
license=('GPL-3.0-only')
provides=('signal-cli')
conflicts=('signal-cli')

source=("https://github.com/AsamK/signal-cli/releases/download/v$pkgver/signal-cli-$pkgver-Linux-native.tar.gz"
        "https://github.com/AsamK/signal-cli/releases/download/v$pkgver/signal-cli-$pkgver-Linux-native.tar.gz.asc")
sha256sums=('36569af20c709e0c5e6e677b74f50f147b21f3740620b8a7affde70f6027f82a'
            'SKIP')
sha512sums=('d83e5b089a6a2833b36d22c417bbe813ca2c507e6886ff026d766c2ff008e4a3b7f58a1dddae09ba5f79d0b4f939bca46db3ad1b034c55bc15154f0835bae263'
            'SKIP')
validpgpkeys=('FA10826A74907F9EC6BBB7FC2BA2CD21B5B09570')

package() {
    install -Dm755 "$srcdir/signal-cli" "$pkgdir/usr/bin/signal-cli"
}

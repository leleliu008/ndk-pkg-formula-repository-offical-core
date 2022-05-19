pkg_set summary "Copies files into or out of a cpio or tar archive"
pkg_set webpage "https://www.gnu.org/software/cpio"
pkg_set src.url "https://ftp.gnu.org/gnu/cpio/cpio-2.13.tar.bz2"
pkg_set src.sha "eab5bdc5ae1df285c59f2a4f140a98fc33678a0bf61bdba67d9436ae26b46f6d"
pkg_set bsystem "configure"

# no member named '_p' in 'struct __sFILE'  return fp->_p - fp->_bf._base;
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/stdio.h.html
# https://github.com/android/ndk/issues/513
# https://github.com/innogames/android-ndk/blob/master/platforms/android-23/arch-arm/usr/include/stdio.h
# https://github.com/android/ndk/issues/295
pkg_set sdk.api 23

build() {
    configure --disable-mt
}

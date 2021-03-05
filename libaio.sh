summary "Linux-native asynchronous I/O access library"
webpage "https://pagure.io/libaio"
src_url "https://pagure.io/libaio/archive/libaio-0.3.111/libaio-libaio-0.3.111.tar.gz"
src_sum "e6bc17cba66e59085e670fea238ad095766b412561f90b354eb4012d851730ba"
license "LGPL-2.1-or-later"
bsystem "make"

prepare() {
    # on macOS, some fs is non-case-sensitive. In this case, make install will always say make: 'install' is up to date.
    mv INSTALL INSTALL.txt &&
    sed_in_place 's|install -D|install|g' src/Makefile
}

build() {
    make -C "$SOURCE_DIR" clean &&
    make -C "$SOURCE_DIR" default CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS -I$SOURCE_DIR/src'" AR="$AR" RANLIB="$RANLIB" &&
    install -d "$ABI_INCLUDE_DIR" &&
    install -d "$ABI_LIBRARY_DIR" &&
    make -C "$SOURCE_DIR" install prefix="$ABI_INSTALL_DIR"
}

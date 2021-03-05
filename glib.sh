summary "Core application library for C"
webpage "https://developer.gnome.org/glib"
src_url "https://download.gnome.org/sources/glib/2.66/glib-2.66.0.tar.xz"
src_sum "c5a66bf143065648c135da4c943d2ac23cce15690fc91c358013b2889111156c"
license "LGPL-2.1-or-later"
bsystem "meson"
depends "libiconv gettext libffi pcre zlib"
ldflags "-lpcre -liconv -lm -lz"

build() {
    meson \
        -Dnls=disabled \
        -Dman=false \
        -Dgtk_doc=false \
        -Diconv=external \
        -Ddtrace=false \
        -Dinternal_pcre=false \
        -Dinstalled_tests=false \
        -Dbsymbolic_functions=false
}

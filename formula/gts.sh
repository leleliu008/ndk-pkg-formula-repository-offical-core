package set summary "GNU triangulated surface library"
package set webpage "https://gts.sourceforge.io/"
package set src.url "https://downloads.sourceforge.net/project/gts/gts/0.7.6/gts-0.7.6.tar.gz"
package set src.sum "059c3e13e3e3b796d775ec9f96abdce8f2b3b5144df8514eda0cc12e13e8b81e"
package set license "LGPL-2.0-or-later"
package set dep.pkg "glib netpbm"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build0() {
    configure
}

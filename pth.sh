summary "GNU Portable THreads"
webpage "https://www.gnu.org/software/pth"
src_url "https://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz"
src_sum "72353660c5a2caafd601b20e12e75d865fd88f6cf1a088b306a3963f0bc77232"

build() {
    configure \
        --disable-profile \
        --disable-tests \
        --enable-batch \
        --enable-pthread \
        --enable-optimize
}

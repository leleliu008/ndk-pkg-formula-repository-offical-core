summary "provide some missing posix threading functions for NDK"
webpage "https://github.com/tux-mind/libbthread"
src_url "https://github.com/tux-mind/libbthread/releases/download/v0.2/libbthread-0.2.tar.gz"
src_sum "a59ec841f383dbaf2f141e953b827702d73b0b0b24d7b8a64a95868f58808493"

build() {
    configure
}

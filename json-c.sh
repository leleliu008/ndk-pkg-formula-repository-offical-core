summary "JSON parser for C"
webpage "https://github.com/json-c/json-c/wiki"
src_url "https://github.com/json-c/json-c/archive/json-c-0.15.tar.gz"
src_sum "74985882e39467b34722e584ab836ed2abd47061888f318125fd4b167002afd5"
license "MIT"

build() {
    cmake \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_STATIC_LIBS=ON \
        -DBUILD_TESTING=OFF \
        -DDISABLE_BSYMBOLIC=OFF \
        -DDISABLE_THREAD_LOCAL_STORAGE=OFF \
        -DDISABLE_WERROR=ON \
        -DENABLE_RDRAND=ON \
        -DENABLE_THREADING=ON
}

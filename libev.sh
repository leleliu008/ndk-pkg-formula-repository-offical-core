summary "Asynchronous event library"
webpage "http://software.schmorp.de/pkg/libev.html"
version "4.33"
src_url "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/libe/libev/libev_$(version).orig.tar.gz"
src_sum "507eb7b8d1015fbec5b935f34ebed15bf346bed04a11ab82b8eee848c4205aea"

build() {
    configure
}

package set summary "High performance WebAssembly interpreter"
package set src.git "https://github.com/wasm3/wasm3.git"
#package set src.url "https://github.com/wasm3/wasm3/archive/v0.5.0.tar.gz"
#package set src.sum "b778dd72ee2251f4fe9e2666ee3fe1c26f06f517c3ffce572416db067546536c"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew -DBUILD_NATIVE=OFF &&
    install_bins wasm3
}

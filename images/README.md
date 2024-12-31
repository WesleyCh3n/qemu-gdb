# [Buildroot](https://buildroot.org/)

- Download: [Link](https://buildroot.org/downloads/buildroot-2024.11.tar.gz)
- Extract and `make nconfig` in the directory
- Load the `config` in `riscv`, then save
- `make -j $(nproc)`
- `output` will contain `build`, `host`, `images`, `staging`, `target`.
- Host binary will locate in `host`, including toolchain.
- RootFS image will locate in `images`.

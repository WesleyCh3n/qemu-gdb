# QEMU gdb

This repo demonstrate performing `gdb` debug with `gdbserver` on a custom riscv os in `QEMU`.

First, build the kernel and `rootfs` image and launch VM by `QEMU`.

Second, cross-compile the source code and `scp` to binary to VM.

Finally, launch `gdbserver` in VM then use host `gdb` to connect to target.

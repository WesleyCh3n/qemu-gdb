#!/bin/sh

export PATH="/home/wesley/buildroot/output/host/bin:${PATH}"

exec qemu-system-riscv64 \
    -nographic \
    -M virt \
    -bios fw_jump.elf \
    -kernel Image \
    -append "rootwait root=/dev/vda ro" \
    -drive file=rootfs.ext2,format=raw \
    -netdev user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::1234-:1234 \
    -device virtio-net-device,netdev=net0  \
    ${EXTRA_ARGS} "$@"

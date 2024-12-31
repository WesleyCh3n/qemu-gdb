# RISC-V

This configuration enable:
1. Linux kernel: 6.11
2. `opensbi`, `fw_dynamic`, `fw_jump`
2. systemd
3. sshd
4. gdbserver
5. root password
6. host qemu

## sshd Configuration

`/etc/ssh/sshd_config`

```
PermitRootLogin yes
```

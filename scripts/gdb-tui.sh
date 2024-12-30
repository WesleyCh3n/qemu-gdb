#!/bin/bash

GDB=${HOME}/buildroot/output/host/bin/riscv64-linux-gdb
${GDB} \
  -ex 'file ./build/main' \
  -ex 'target remote localhost:1234' \
  -ex 'tui enable'

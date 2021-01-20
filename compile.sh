#!/bin/bash
if [ -f "boot.bin" ];then rm boot.bin; fi
if [ -f "os.raw" ];then rm os.raw; fi
nasm -o boot.bin boot.asm
if [ -f "boot.bin" ];then 
  bximage -mode=create -hd=60 -q os.raw
  dd if=boot.bin of=os.raw bs=512 count=1
  rm boot.bin
  qemu-system-x86_64 os.raw
fi
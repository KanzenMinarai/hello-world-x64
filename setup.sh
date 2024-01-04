#!/usr/bin/env bash

if [[ "$1" == "install" ]]; then
  nasm -f elf64 hello.s
  ld.lld -o hello hello.o
fi

if [[ "$1" == "uninstall" ]]; then
  rm hello hello.o
fi
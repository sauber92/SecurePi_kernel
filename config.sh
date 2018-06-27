#!/bin/bash

ARCH=arm

if [ $(uname -m) = 'x86_64' ]; then
  CROSS_COMPILE=./tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
else
  CROSS_COMPILE=./tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-
fi

KERNEL=kernel7

export ARCH
export CROSS_COMPILE
export KERNEL7

cd $(pwd)/linux && make bcm2709_defconfig

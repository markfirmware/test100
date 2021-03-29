#!/bin/bash
set -e

sudo apt-get install -y flex bison gperf \
  python3 python3-pip python3-setuptools cmake ninja-build \
  ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
mkdir -p esp
cd esp
git clone --recursive https://github.com/espressif/esp-idf.git
cd esp-idf
./install.sh

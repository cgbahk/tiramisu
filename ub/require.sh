#!/bin/bash

set -e

apt update
apt install -y \
  autoconf libtool git cmake gcc g++ libpng-dev zlib1g-dev libjpeg-dev python-dev wget gnupg

wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
sh -c 'echo deb https://apt.repos.intel.com/mkl all main > /etc/apt/sources.list.d/intel-mkl.list'
apt update && apt install -y intel-mkl-2019.4-070

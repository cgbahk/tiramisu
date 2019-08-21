#!/bin/bash

set -ex

./utils/scripts/install_submodules.sh ${PWD}

mkdir build
cd build
cmake ..
make -j tiramisu

#!/bin/sh
git clone https://github.com/DPGA/Analyse
git clone https://github.com/DPGA/Daq
git clone https://github.com/DPGA/Lib
git clone https://github.com/DPGA/Monitoring
git clone https://github.com/DPGA/QtDcs
mkdir build
cmake ../common/.
make

#!/bin/sh
git clone https://github.com/ntop/PF_RING.git Pf_Ring
git clone https://github.com/DPGA/Analyse
git clone https://github.com/DPGA/Daq
git clone https://github.com/DPGA/Lib
git clone https://github.com/DPGA/Monitoring
git clone https://github.com/DPGA/Dcs
mkdir build
cd build
cmake ../common/.
make

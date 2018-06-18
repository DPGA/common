#!/bin/sh
git clone https://github.com/ntop/PF_RING.git Pf_Ring
wget https://sourceforge.net/projects/qwt/files/qwt/6.1.3/qwt-6.1.3.tar.bz2
tar vjxf qwt-6.1.3.tar.bz2 Lib/.
git clone https://github.com/DPGA/ConfigDcs
git clone https://github.com/DPGA/Analyse
git clone https://github.com/DPGA/Daq
git clone https://github.com/DPGA/Lib
git clone https://github.com/DPGA/Monitoring
git clone https://github.com/DPGA/Dcs
mkdir build
cd build
cmake ../common/.
make

#!/bin/sh
maj= awk '/define __MAJOR_VERSION/ {print $3}' Version.h |tr -dc '0-9'
min= awk '/define __MINOR_VERSION/ {print $3}' Version.h |tr -dc '0-9'

min=`expr $min + 1`
exit $min

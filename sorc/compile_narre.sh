#!/bin/sh

SORCnarre=`pwd`

source ../versions/build.ver
module reset
module use `pwd`
module load build-narre.module.lua
module list

EXEC=`pwd`/../exec
mkdir -p $EXEC
rm $EXEC/*

#compile product generator sorc
cd $SORCnarre/narre_ensprod.fd
make
make copy
make clean 


#compile Precip code
cd $SORCnarre/narre_calPrecip.fd
make narre_precip
mv  narre_precip ${EXEC}/.
make clean

make narre_precip3hr
mv narre_precip3hr ${EXEC}/.
make clean

echo "All compilatios done"



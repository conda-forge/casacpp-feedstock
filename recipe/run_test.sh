#!/bin/bash

set -euxo pipefail

modules=(
    air_casawvr
    alma
    asdmstman
    atmosphere
    atnf
    bnmin1
    calanalysis
    casadbus
    casa_sakura
    casatools
    components
    flagging
    graphics
    imageanalysis
    miriad
    mstransform
    msvis
    nrao
    parallel
    protobuf_generated
    singledishfiller
    singledish
    spectrallines
    stdcasa
    synthesis
)

for mod in "${modules[@]}"; do
    test -f "$PREFIX/lib/libcasacpp_${mod}${SHLIB_EXT}"
    test -d "$PREFIX/include/casacpp/${mod}"
done

test -f $PREFIX/lib/pkgconfig/casacpp.pc

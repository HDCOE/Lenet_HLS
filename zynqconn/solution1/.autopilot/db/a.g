#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/hadee/Work/Project/FPGA/Zynqconn2/zynqconn/solution1/.autopilot/db/a.g.bc ${1+"$@"}

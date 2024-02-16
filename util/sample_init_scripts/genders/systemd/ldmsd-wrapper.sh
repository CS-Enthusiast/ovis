#! /bin/bash
prefix=/usr/local/ovis
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
sbindir=${exec_prefix}/sbin
localstatedir=${prefix}/var

export LD_LIBRARY_PATH=$libdir:/usr/lib:$LD_LIBRARY_PATH
mkdir -p $localstatedir/run/ldmsd/tmp
target=$1
shift
echo "$VGBIN $VGOPT $NUMACTL $NUMAOPT $sbindir/ldmsd $*" > $localstatedir/run/ldmsd/ldmsd.start.$target
$VGBIN $VGOPT $NUMACTL $NUMAOPT $sbindir/ldmsd $*
#LDMS_POST_INSTALLED=0 do not change this line

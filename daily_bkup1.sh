#!//usr/bin/env bash

. env.sh

wl=(SUN MON THE WED THU FRI SAT)
w=`date +'%w'`
r="$r_root1@${wl[$w]}"
zfs destroy -r ${r}
zfs snapshot -r ${r}


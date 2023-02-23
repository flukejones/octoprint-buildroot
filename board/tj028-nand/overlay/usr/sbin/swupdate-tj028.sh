#!/bin/sh
# Determine which partition to update, and update it

CURRENT=$(fw_printenv |grep bootvol= |cut -b 9-)
NEXT=$(fw_printenv |grep bootvol= |cut -b 9-)

if [ $CURRENT = "rootfs1" ]; then NEXT="rootfs2"; else NEXT="rootfs1"; fi

swupdate -f /etc/swupdate/swupdate.cfg -i /tmp/update-tj028.swu -e rootfs,$NEXT

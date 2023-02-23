#!/bin/sh
# Reset all the u-boot variables involved in updating the OS

ISUPGRADING=$(fw_printenv upgrade_available | awk -F'=' '{print $2}')

echo "upgrade_available=$ISUPGRADING"

if [ -z "$ISUPGRADING" ]
then
    echo "No rootfs update pending"
else
    echo "rootfs updated, verifying system"
    # Perform extra checks here.
    fw_setenv upgrade_available
    fw_setenv ustate
    fw_setenv bootcount 0
fi

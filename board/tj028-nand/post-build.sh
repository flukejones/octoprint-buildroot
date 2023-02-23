#!/bin/sh
NAND_USER_DATA="ubi0:user_data /user_data ubifs defaults 0 1"

if grep -Fxq "$NAND_USER_DATA" ${TARGET_DIR}/etc/fstab
then
    echo "user_data fstab entry exists"
else
    echo $NAND_USER_DATA >> ${TARGET_DIR}/etc/fstab
fi

# Need to start dbus before HMI
mv ${TARGET_DIR}/etc/init.d/S30dbus ${TARGET_DIR}/etc/init.d/S04dbus

# Rename the bootloaders for inclusion in SDCARD image
BL="tf-a-stm32mp157a-microgea-tj028.stm32"
FP="fip.bin"
BLN="tf-a-stm32mp157a-microgea-tj028-nand.stm32"
FPN="fip-nand.bin"

cp ${BINARIES_DIR}/${BL} ${BINARIES_DIR}/${BLN}
cp ${BINARIES_DIR}/${FP} ${BINARIES_DIR}/${FPN}

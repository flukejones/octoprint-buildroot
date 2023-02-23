#!/bin/sh

cat <<'EOF' > ${BINARIES_DIR}/flash.sh
#!/bin/sh
flash_erase /dev/mtd0 0 0
flash_erase /dev/mtd1 0 0
flash_erase /dev/mtd2 0 0
flash_erase /dev/mtd3 0 0
nandwrite -p /dev/mtd0 ./tf-a-stm32mp157a-microgea-tj028-nand.stm32
nandwrite -p /dev/mtd1 ./fip-nand.bin
nandwrite -p /dev/mtd2 ./fip-nand.bin
ubiformat /dev/mtd3 -f ./rootfs.ubi
EOF

chmod +x ${BINARIES_DIR}/flash.sh

# Create update archive

BOARD_DIR=$(dirname $0)

cp ${BOARD_DIR}/sw-description ${BINARIES_DIR}

IMG_FILES="sw-description sw-description.sig tf-a-stm32mp157a-microgea-tj028.stm32 fip.bin rootfs.ubifs"

# Generate and update the hash
SHA256_FSBL=$(sha256sum ${BINARIES_DIR}/tf-a-stm32mp157a-microgea-tj028.stm32 | awk '{print $1}')
SHA256_FIP=$(sha256sum ${BINARIES_DIR}/fip.bin | awk '{print $1}')
SHA256_ROOTFS=$(sha256sum ${BINARIES_DIR}/rootfs.ubifs | awk '{print $1}')

sed -i "s|<rootfs_sha256>|\"${SHA256_ROOTFS}\"|g" ${BINARIES_DIR}/sw-description
sed -i "s|<fsbl1_sha256>|\"${SHA256_FSBL}\"|g" ${BINARIES_DIR}/sw-description
sed -i "s|<fip_sha256>|\"${SHA256_FIP}\"|g" ${BINARIES_DIR}/sw-description

# Sign our images
openssl dgst -sha256 \
-sign ${BR2_EXTERNAL_JTE_PATH}/../signing-keys/jte-buildroot-signing-priv.pem \
-passin file:${BR2_EXTERNAL_JTE_PATH}/../signing-keys/jte-buildroot-signing-pass \
-sigopt rsa_padding_mode:pss \
-sigopt rsa_pss_saltlen:-2 \
${BINARIES_DIR}/sw-description > ${BINARIES_DIR}/sw-description.sig


cd ${BINARIES_DIR}
for i in ${IMG_FILES};do
        echo $i;done | cpio -ov -H crc >  ${BINARIES_DIR}/update-tj028.swu
#pushd ${BINARIES_DIR}
#for f in ${IMG_FILES} ; do
#	echo ${f}
#	cpio -ovL -H crc -F ${BINARIES_DIR}/${f} > ${BINARIES_DIR}/update-tj028.swu
#done;
#done | cpio -ovL -H crc > update-tj028.swu
#popd

exit $?

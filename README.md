# Buildroot definitions for OctoPrint

This is a minimal linux image to increase resource usage eficiency of Octoprint deployments on lower end embedded systems. Currently, a Orange Pi Zero is being targeted.

## How to build

1. Clone this repo
2. Clone buildroot
3. Add your WiFi credentials: ` nano buildroot-octoprint/board/common/overlay/etc/wpa_supplicant.conf `

**Building for manual deployment:**

1. `cd buildroot`
2. `make BR2_EXTERNAL=../buildroot-octoprint BR2_DEFCONFIG=../buildroot-octoprint/configs/<your config> defconfig`
3. `make menuconfig`
4. `make -j$(nproc)`
5. `make legal-info`
6. `dd if=output/images/sdcard-tj028.img of=/dev/<MMC> bs=1M conv=fdatasync status=progress`

## Using other boards

When using other board configuration files, be sure to add the following entries to your `BOARD_defconfig` file:

```
BR2_USE_WCHAR=y
BR2_TOOLCHAIN_BUILDROOT_WCHAR=y
BR2_PACKAGE_PYTHON3=y
BR2_PACKAGE_PYTHON_PIP=y
BR2_PACKAGE_PYTHON_WHEEL=y
BR2_PACKAGE_PYTHON_OCTOPRINT=y
BR2_TARGET_ROOTFS_EXT2_SIZE="150M"

BR2_ROOTFS_OVERLAY="$(BR2_EXTERNAL_OCTOPRINT_PATH)/board/common/rootfs-overlay"
```
**Note**: Change the file system size and overlay files as needed (`BR2_TARGET_ROOTFS_EXT2_SIZE`).

## Credits

Used buildroot's `utils/scanpypi` script as base and smcgroty's [initial work](https://github.com/smcgroty/octoprint-buildroot) as inspiration.

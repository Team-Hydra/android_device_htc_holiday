# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := holiday

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=holiday no_console_suspend=1
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
BUILD_KERNEL := true
TARGET_KERNEL_CONFIG := holiday_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-arm-cortex-a8
TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-cortex_a8-linux-gnueabi

# Use libril in the device tree
BOARD_PROVIDES_LIBRIL := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := holiday

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Wifi
-include device/htc/msm8660-common/bcmdhd.mk

# FileSystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 37
BOARD_WANTS_EMMC_BOOT := true

# Recovery
TARGET_RECOVERY_FSTAB = device/htc/holiday/ramdisk/fstab.holiday
RECOVERY_FSTAB_VERSION := 2
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

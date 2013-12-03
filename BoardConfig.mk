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

# inherit from common msm7x27
-include device/htc/msm7x27-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := marvel
TARGET_DEVICE := marvel

### Compass
BOARD_VENDOR_COMPASS_HARDWARE := akm8975

### Kernel related stuff
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x12c00000
BOARD_KERNEL_PAGESIZE := 2048

### Kernel source
TARGET_KERNEL_SOURCE := kernel/htc/marvel
TARGET_KERNEL_CONFIG := marvel_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

### Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x0036000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x06000020
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x10400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09600000
BOARD_FLASH_BLOCK_SIZE := 262144

## TEMPORARY HACK: skip building external/chromium_org/
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

### Recovery
#BOARD_USES_RECOVERY_CHARGEMODE := true
TARGET_RECOVERY_FSTAB := device/htc/marvel/recovery.fstab
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/msm7x27-common/recovery/graphics.c
BOARD_USES_MMCUTILS := false
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true


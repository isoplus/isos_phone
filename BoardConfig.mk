#
# Copyright 2014 The Android Open Source Project
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

# Inherit from the proprietary version
-include vendor/huawei/u8951/BoardConfigVendor.mk

# Architecture and CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_LOWMEM := true
TARGET_BOOTLOADER_BOARD_NAME := u8951
BOARD_WANTS_EMMC_BOOT := true

# Graphics
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/huawei/u8951/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_OPENGL_RENDERER := true

# Hardware
BOARD_HARDWARE_CLASS := device/huawei/u8951/cmhw

# Kernel
TARGET_PREBUILT_KERNEL := device/huawei/u8951/kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei androidboot.selinux=permissive
BOARD_PAGE_SIZE := 2048

# Lights
TARGET_PROVIDES_LIBLIGHTS := true


# Compiler flags
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a5
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon -mtune=cortex-a5

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8951/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 # 0x40000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207943168 # 0x47FFC000
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x800000
BOARD_CACHEIMAGE_PARTITION_SIZE := 201326592 # 0xC000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1400000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
#EXTRA_PARTITIONS_PATH := "/efs"
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8951/recovery/graphics.c
TARGET_RECOVERY_FSTAB := device/huawei/u8951/rootdir/fstab.huawei
TARGET_COMMON_NAME := By Shoxx 4 Huawei G510
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480
BRIGHTNESS_SYS_FILE := /sys/devices/platform/msm_fb.589824/leds/lcd-backlight/brightness
BOARD_USE_NTFS_3G := false
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"
BOARD_HAS_LOW_RESOLUTION := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8951/recovery/recovery-keys.c
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_RECOVERY_INITRC := device/huawei/u8951/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# USB
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 19
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1


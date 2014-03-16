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

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8951/overlay

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.confg.hw_appfsversion=U8951V4_4_SYSIMG \
    ro.confg.hw_appsbootversion=U8951V4_4_APPSBOOT \
    ro.confg.hw_appversion=U8951V4_4_KERNEL

# Files
PRODUCT_COPY_FILES += \
    device/huawei/u8951/rootdir/fstab.huawei:root/fstab.huawei \
    device/huawei/u8951/rootdir/init.device.rc:root/init.device.rc \
    device/huawei/u8951/rootdir/1191601.img:root/tp/1191601.img

PRODUCT_COPY_FILES += \
    device/huawei/u8951/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8951/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/huawei/u8951/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8951/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/huawei/u8951/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

$(call inherit-product-if-exists, vendor/huawei/u8951/u8951-vendor.mk)

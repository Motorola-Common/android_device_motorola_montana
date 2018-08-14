#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/motorola/sanders

# Asserts
TARGET_OTA_ASSERT_DEVICE := sanders,sanders_retail

# Kernel
TARGET_KERNEL_CONFIG := sanders_defconfig

# DT2W
#TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake"

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        #    16384 * 1024 mmcblk0p37
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456      #   262144 * 1024 mmcblk0p52
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 21073920    #    20580 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296    #  4194304 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25614597120 # 25014255 * 1024 mmcblk0p54

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# inherit from motorola msm8953-common
-include device/motorola/msm8953-common/BoardConfigCommon.mk

# Manifest (TEMP)
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml

# inherit from the proprietary version
-include vendor/motorola/potter/BoardConfigVendor.mk
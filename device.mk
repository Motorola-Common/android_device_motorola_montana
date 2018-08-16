#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Camera
PRODUCT_PACKAGES += \
    libbson \
    Camera2 \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    vendor.qti.hardware.camera.device@1.0 \
    vendor.qti.hardware.camera.device@1.0_vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/imx219_chromatix.xml:system/etc/camera/imx219_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx258_bear_chromatix.xml:system/etc/camera/mot_imx258_bear_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_imx258_mono_chromatix.xml:system/etc/camera/mot_imx258_mono_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k3l8_bear_chromatix.xml:system/etc/camera/mot_s5k3l8_bear_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/mot_s5k3l8_mono_chromatix.xml:system/etc/camera/mot_s5k3l8_mono_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8953_mot_sanders_camera.xml:system/etc/camera/msm8953_mot_sanders_camera.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h8_chromatix.xml:system/etc/camera/s5k4h8_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/vfwconfig.json:system/etc/camera/vfwconfig.json

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/vendor/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/vendor/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-sanders.conf:system/vendor/etc/thermal-engine.conf

# Rootdir
PRODUCT_PACKAGES += \
    init.mmi_device.rc \
    init.qcom_device.rc

# Inherit from motorola msm8953-common
$(call inherit-product, device/motorola/msm8953-common/common.mk)
#
# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/sf340n/sf340n-vendor.mk)

# common msm8937
$(call inherit-product, device/lge/msm8937-common/msm8937.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml 

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Gesture handler
PRODUCT_PACKAGES += \
    GestureHandler

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp-lg.conf:system/etc/libnfc-nxp-lg.conf \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# NFC packages
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    nfc_nci.pn54x.default \
    com.android.nfc_extras

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.lge.bt.rc \
    init.lge.fingerprints.rc \
    init.qcom.early_boot.sh \
    init.qcom.class_core.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.sensors.sh \
    init.qcom.wifi.sh \
    init.qcom.bt.sh \
    init.target.rc \
    init.lge.fm.rc \
    init.qcom.fm.sh \

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_common.conf:system/etc/sensors/sensor_def_common.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_variable.conf:system/etc/sensors/sensor_def_variable.conf

# Thermal Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8937.conf:system/etc/thermal-engine-8937.conf

# WCNSS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_boot.bin

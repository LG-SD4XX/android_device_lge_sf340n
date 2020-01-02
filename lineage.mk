#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sf340n device
$(call inherit-product, device/lge/sf340n/device.mk)

BOARD_VENDOR := lge
PRODUCT_DEVICE := sf340n
PRODUCT_NAME := lineage_sf340n
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG Stylo 3 Plus
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

TARGET_VENDOR_PRODUCT_NAME := sf340n

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="sf340n" \
    PRODUCT_NAME="sf340n" \
    PRIVATE_BUILD_DESC="sf340n_tmo_us-user 7.1.2 NRD90U 171071514d722 release-keys" \
    BUILD_FINGERPRINT="MetroPCS/sf340n_mpcs_us/sf340n:7.1.2/NRD90U/171071514d722:user/release-keys" \
    PRIVATE_BUILD_DESC="sf340n_mpcs_us-user 7.1.2 NRD90U 171071514d722 release-keys"
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop

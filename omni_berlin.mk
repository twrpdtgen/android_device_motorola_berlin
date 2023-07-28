#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from berlin device
$(call inherit-product, device/motorola/berlin/device.mk)

PRODUCT_DEVICE := berlin
PRODUCT_NAME := omni_berlin
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 20
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="berlin_global-user 11 S1RGS32.53-18-22-37 9f1379 release-keys"

BUILD_FINGERPRINT := motorola/berlin_global/berlin:11/S1RGS32.53-18-22-37/9f1379:user/release-keys

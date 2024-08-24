#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from cancunf device
$(call inherit-product, device/motorola/cancunf/device.mk)

PRODUCT_DEVICE := cancunf
PRODUCT_NAME := twrp_cancunf
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cancunf_g_vext-user 12 U1TDS34.94-12-7-6 42110d release-keys"

BUILD_FINGERPRINT := motorola/cancunf_g_vext/cancunf:12/U1TDS34.94-12-7-6/42110d:user/release-keys

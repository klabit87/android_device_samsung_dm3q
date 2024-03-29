#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from dm3q device
$(call inherit-product, device/samsung/dm3q/device.mk)

PRODUCT_DEVICE := dm3q
PRODUCT_NAME := twrp_dm3q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S918B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm3qxxx-user 13 TP1A.220624.014 S918BXXS3BWL3 release-keys"

BUILD_FINGERPRINT := samsung/dm3qxxx/dm3q:13/TP1A.220624.014/S918BXXS3BWL3:user/release-keys

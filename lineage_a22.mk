#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a32 device
$(call inherit-product, device/samsung/a22/device.mk)

LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

PRODUCT_DEVICE := a22
PRODUCT_NAME := lineage_a22
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A225M
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := a22xx
PRODUCT_SYSTEM_DEVICE := a22

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a22ub-user 13 TP1A.220624.014 A225MUBU7CXA5 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := samsung/a22ub/a22:12/SP1A.210812.016/A225MUBU7CXA5:user/release-keys

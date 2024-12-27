#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/even/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_even
PRODUCT_DEVICE := even
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme C25/C25s/Narzo 50A

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=even \
    PRODUCT_NAME=even \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1652065281981 release-keys"

BUILD_FINGERPRINT := realme/RMX3191T2/RMX3191:12/SP1A.210812.016/R.202205091101:user/release-keys
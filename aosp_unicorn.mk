#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

# Inherit some common PixelExperience stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true
#TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_USES_AOSP_RECOVERY := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from unicorn device.
$(call inherit-product, device/xiaomi/unicorn/device.mk)

## Device identifier
PRODUCT_DEVICE := unicorn
PRODUCT_NAME := aosp_unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi 12S Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="unicorn"

BUILD_FINGERPRINT := Xiaomi/unicorn/unicorn:13/SKQ1.220303.001/V14.0.2.0.TLFMIXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

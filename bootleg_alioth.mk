#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

# Some Bootleggers stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOTLEG_ARCH := arm64
BOOTLEGGERS_BUILD_TYPE := Unshishufied
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := bootleg_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/alioth_global/alioth:12/SKQ1.211006.001/V13.0.3.0.SKHMIXM:user/release-keys

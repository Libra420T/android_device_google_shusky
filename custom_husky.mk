#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := husky
DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/husky
$(call inherit-product, device/google/zuma/custom_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-custom.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := aosp_$(DEVICE_CODENAME)

# The-Pixel-Project Build Flags
CUSTOM_MAINTAINER := Libra420T
CUSTOM_BUILD_TYPE := UNOFFICIAL

# Call Recorder
TARGET_CALL_RECORDING_SUPPORTED := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# GMS
WITH_GMS := true
WITH_GAPPS := true

# Aperture
PRODUCT_NO_CAMERA := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="husky-user 15 BP1A.250305.019 13003188 release-keys" \
    BuildFingerprint=google/husky/husky:15/BP1A.250305.019/13003188:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)

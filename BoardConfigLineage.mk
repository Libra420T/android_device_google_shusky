#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true
DEVICE_PATH := device/google/shusky
# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_shusky

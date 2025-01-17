#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit from common msm8937-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00R

# Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
# Kernel
TARGET_KERNEL_CONFIG := X00R_defconfig

# Display
TARGET_SCREEN_DENSITY := 380

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_X00R
TARGET_RECOVERY_DEVICE_MODULES := libinit_X00R

SELINUX_IGNORE_NEVERALLOWS := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit the proprietary files
-include vendor/asus/X00R/BoardConfigVendor.mk

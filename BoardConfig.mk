#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 18136170496

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8850-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/fairlady

# Build the Qualcomm Wonder passthrough path used by Mosey/AirDrop.
TARGET_KERNEL_BAZEL_EXTRA_FLAGS += --define=CONFIG_WONDER_SUPPORT=y

# Package only fairlady overlays, preserving their bootloader entry order.
TARGET_KERNEL_BAZEL_EXTRA_FLAGS += --//vendor/oneplus/sm8850:dtbo_config=//vendor/oneplus/sm8850-devicetrees:fairlady_dtbo_config
TARGET_KERNEL_BAZEL_EXTRA_FLAGS += --//common-modules/wonder:wonder_kernel=//common:kernel_aarch64
BOARD_VENDOR_KERNEL_MODULES_LOAD += wonder.ko

# Assert
TARGET_OTA_ASSERT_DEVICE := OP64DDL1

# Display
TARGET_SCREEN_DENSITY := 608

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_DENSITY := xxhdpi
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/fairlady/BoardConfigVendor.mk

# Device-specific permissions for Kernel Manager.
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

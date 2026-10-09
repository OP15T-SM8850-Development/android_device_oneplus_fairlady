#
# Copyright (C) 2026 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

# Build without bundled root or call recording.
WITH_SU := false
TARGET_INCLUDE_BCR := false
BUILD_BCR := false

# An empty value disables insecure ADB; common.mk checks this with ifdef.
WITH_ADB_INSECURE :=

# Include the native AirDrop backend before the common product selects GMS packages.
TARGET_INCLUDE_MOSEY := true

$(call inherit-product, device/oneplus/fairlady/lineage_fairlady.mk)

PRODUCT_NAME := evolution_fairlady
PRODUCT_DEVICE := fairlady

PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom-caf/wlan \
    hardware/qcom-caf/wlan/qcwcn

# Partition-specific privileged permission allowlists for release enforcement.
PRODUCT_COPY_FILES += \
    device/oneplus/fairlady/configs/permissions/privapp-permissions-evolution-fairlady-system.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-evolution-fairlady.xml \
    device/oneplus/fairlady/configs/permissions/privapp-permissions-evolution-fairlady-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-evolution-fairlady.xml \
    device/oneplus/fairlady/configs/permissions/privapp-permissions-evolution-fairlady-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-evolution-fairlady.xml

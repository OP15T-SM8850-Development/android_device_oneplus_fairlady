#
# Copyright (C) 2026 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/oneplus/fairlady/lineage_fairlady.mk)

PRODUCT_NAME := evolution_fairlady
PRODUCT_DEVICE := fairlady

PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom-caf/wlan \
    hardware/qcom-caf/wlan/qcwcn

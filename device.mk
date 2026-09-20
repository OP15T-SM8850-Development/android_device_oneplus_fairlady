#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_module_config_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_module_config_primary.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2640
TARGET_SCREEN_WIDTH := 1216

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/displayconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946860609507731.xml

# Keymint
PRODUCT_PACKAGES += \
    android.hardware.security.keymint3-service.strongbox.nxp \
    android.hardware.weaver-service.nxp

# LiveDisplay
$(call soong_config_set_bool,OPLUS_LINEAGE_LIVEDISPLAY_HAL,ENABLE_SE,false)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusSettingsProviderResTarget \
    OPlusSettingsResTarget \
    OPlusSystemUIResTarget \
    OPlusWifiResTarget

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.oplus

# Recovery
$(call soong_config_set_bool,recovery,target_recovery_uses_qti_drm,true)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Touch features
$(call soong_config_set_bool,OPLUS_LINEAGE_TOUCH_HAL,ENABLE_GM,true)
$(call soong_config_set_bool,OPLUS_LINEAGE_TOUCH_HAL,ENABLE_HTPR,false)

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service.oplus

$(call soong_config_set,OPLUS_LINEAGE_VIBRATOR_HAL,USE_EFFECT_STREAM,true)
$(call soong_config_set,OPLUS_LINEAGE_VIBRATOR_HAL,INCLUDE_DIR,$(LOCAL_PATH)/vibrator/effect)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8850-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/fairlady/fairlady-vendor.mk)



# Stock fairlady haptic waveforms
PRODUCT_COPY_FILES += \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_1.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_1.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_10.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_10.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_100.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_100.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_101.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_101.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_102.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_102.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_103.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_103.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_104.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_104.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_105.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_105.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_106.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_106.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_107.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_107.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_108.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_108.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_109.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_109.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_11.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_11.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_110.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_110.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_111.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_111.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_112.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_112.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_118.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_118.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_12.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_12.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_122.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_122.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_13.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_13.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_14.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_14.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_170.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_170.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_2.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_2.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_3.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_3.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_302.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_302.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_303.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_303.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_304.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_304.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_305.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_305.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_308.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_308.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_318.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_318.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_362.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_362.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_363.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_363.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_364.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_364.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_365.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_365.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_366.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_366.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_367.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_367.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_368.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_368.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_369.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_369.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_370.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_370.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_4.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_4.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_41.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_41.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_42.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_42.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_428.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_428.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_429.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_429.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_43.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_43.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_430.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_430.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_431.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_431.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_432.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_432.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_433.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_433.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_434.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_434.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_435.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_435.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_44.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_44.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_45.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_45.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_46.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_46.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_47.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_47.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_5.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_5.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_51.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_51.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_52.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_52.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_53.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_53.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_54.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_54.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_55.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_55.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_56.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_56.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_59.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_59.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_6.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_6.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_60.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_60.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_61.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_61.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_62.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_62.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_63.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_63.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_64.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_64.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_65.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_65.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_66.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_66.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_67.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_67.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_68.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_68.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_69.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_69.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_7.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_7.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_8.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_8.bin \
    device/oneplus/fairlady/vibrator/stock/809/def/effect_9.bin:$(TARGET_COPY_OUT_ODM)/etc/vibrator/809/def/effect_9.bin \
    device/oneplus/fairlady/vibrator/stock/vibrator_effect.json:$(TARGET_COPY_OUT_ODM)/etc/vibrator/vibrator_effect.json

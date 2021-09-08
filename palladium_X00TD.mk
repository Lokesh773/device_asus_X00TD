#
# Copyright (C) 2021 Palladium-OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Palladium-OS stuff
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := palladium_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.210805.001.A1 7474174 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/coral/coral:11/RQ3A.210805.001.A1/7474174:user/release-keys"

#Official
PALLADIUM_BUILD_TYPE := OFFICIAL

# Palladium Specific props
PRODUCT_PRODUCT_PROPERTIES += \
  ro.palladiumdevice.maintainer=Lokesh \
  ro.palladiumdevice.battery=5000mAh \
  ro.palladiumdevice.camera=13MP+5MP+8MP  \
  ro.palladiumdevice.cpu=SD636 \
  ro.palladiumdevice.display=5.99 \
  ro.palladiumdevice.displaytype=FULLHD+  

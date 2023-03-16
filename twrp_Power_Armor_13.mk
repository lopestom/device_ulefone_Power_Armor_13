#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/ulefone/Power_Armor_13

# Release name
PRODUCT_RELEASE_NAME := Power Armor 13

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device
$(call inherit-product, device/ulefone/Power_Armor_13/device.mk)

# Inherit some common twrp stuff.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Power_Armor_13
PRODUCT_NAME := twrp_Power_Armor_13
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Power Armor 13
PRODUCT_MANUFACTURER := Ulefone

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Power_Armor_13 \
    BUILD_PRODUCT=Power_Armor_13 \
    PRODUCT_NAME=Power_Armor_13 \
    PRIVATE_BUILD_DESC="Power_Armor_13-user 12 SP1A.210812.016 1675935266 release-keys"

BUILD_FINGERPRINT := Ulefone/Power_Armor_13/Power_Armor_13:12/SP1A.210812.016/1675935266:user/release-keys


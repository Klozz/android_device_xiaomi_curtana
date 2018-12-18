#
# Copyright (C) 2019 The The XPerience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from curtana device
$(call inherit-product, device/xiaomi/curtana/device.mk)

# Inherit some common XPerience stuff.
$(call inherit-product, vendor/xperience/config/common_full_phone.mk)

# CAF prop CAF includes
include device/qcom/common/common.mk

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

#call tcmiface in boot
#PRODUCT_BOOT_JARS += tcmiface

PRODUCT_NAME := xperience_curtana
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := curtana
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 9s

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := Xiaomi

#TARGET_CUSTOM_KERNEL := yuki_kernel
#
# Copyright (C) 2022 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from TWRP common configurations
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(COMMON_PATH)/recovery/root,recovery/root) \
	$(DEVICE_PATH)/prebuilt/dtb.img:dtb.img

# A/B support
AB_OTA_UPDATER := true

# A/B updater updatable partitions list. Keep in sync with the partition list
# with "_a" and "_b" variants in the device. Note that the vendor can add more
# more partitions to this list for the bootloader and radio.
AB_OTA_PARTITIONS += \
    preloader \
    custom \
    elabel \
    md1img \
    spmfw \
    scp \
    sspm \
    gz \
    lk \
    boot \
    dtbo \
    tee \
    vendor \
    system \
    vbmeta

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 28

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service \
	bootctl

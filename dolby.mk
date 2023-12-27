#
# Copyright (C) 2022 FlamingoOS Project
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

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   hardware/dolby

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += hardware/dolby/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += hardware/dolby/dolby_framework_matrix.xml
DEVICE_MANIFEST_FILE += hardware/dolby/vendor.dolby.hardware.dms@1.0-service.xml
    
# Configs
PRODUCT_COPY_FILES += \
    hardware/dolby/configs/dap-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dap-default.xml \
    hardware/dolby/configs/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    hardware/dolby/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Dolby
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.5.1.28_r1 \
    ro.vendor.product.device.db=OP_DEVICE \
    ro.vendor.product.manufacturer.db=OP_PHONE \
    vendor.product.device=OP_PHONE \
    vendor.product.manufacturer=OPD 
   
# DaxUI and daxService
PRODUCT_PACKAGES += \
    DaxUI \
    DolbyAtmos \
    daxService
   
# Proprietary blobs
PRODUCT_COPY_FILES += \
    hardware/dolby/proprietary/system/etc/sysconfig/config-com.dolby.atmos.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.atmos.xml \
    hardware/dolby/proprietary/system/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.daxappui.xml \
    hardware/dolby/proprietary/system/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.daxservice.xml \
    hardware/dolby/proprietary/system/etc/permissions/dolby_dax.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/dolby_dax.xml \
    hardware/dolby/proprietary/system/framework/dolby_dax.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/dolby_dax.jar \
    hardware/dolby/proprietary/system/etc/permissions/privapp-com.dolby.atmos.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-com.dolby.atmos.xml \
    hardware/dolby/proprietary/system/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-com.dolby.daxservice.xml \
    hardware/dolby/proprietary/odm/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_ODM)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    hardware/dolby/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@1.0-service \
    hardware/dolby/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@1.0-service.rc \
    hardware/dolby/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    hardware/dolby/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    hardware/dolby/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    hardware/dolby/proprietary/vendor/lib/soundfx/libatmos.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libatmos.so \
    hardware/dolby/proprietary/vendor/lib/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@1.0.so \
    hardware/dolby/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    hardware/dolby/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    hardware/dolby/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    hardware/dolby/proprietary/vendor/lib64/soundfx/libatmos.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libatmos.so \
    hardware/dolby/proprietary/vendor/lib64/vendor.dolby.hardware.dms@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0-impl.so \
    hardware/dolby/proprietary/vendor/lib64/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0.so

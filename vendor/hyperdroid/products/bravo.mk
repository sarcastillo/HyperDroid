# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/hyperdroid/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/hyperdroid/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := bravo
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78C PRODUCT_NAME=htc_bravo BUILD_FINGERPRINT=htc_wwe/htc_bravo/bravo/bravo:2.2/FRF91/226611:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="2.10.405.2 CL226611 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=hyperdroid_bravo_defconfig

# Extra Bravo (CDMA/GSM) overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/hyperdroid/overlay/bravo

# Add proprietary apps and extra packages
PRODUCT_PACKAGES += \
    FM \
    hcitool



PRODUCT_COPY_FILES += \
   vendor/hyperdroid/proprietary/Zeam.apk:system/app/Zeam.apk

#
# Set ro.modversion
#
ifdef RELEASE
    PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=Redux-v1.0.0
else
ifdef RC
   PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=Redux-v1.0.0-RC4
else
    PRODUCT_PROPERTY_OVERRIDES += \
    	ro.modversion=Redux-SNAPHSOT-$(shell date +%m%d%Y)
endif
endif

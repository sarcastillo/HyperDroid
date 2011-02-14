# Generic cyanogenmod product
PRODUCT_NAME := hyperdroid
PRODUCT_BRAND := hyperdroid
PRODUCT_DEVICE := generic

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Common hyperdroid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/hyperdroid/overlay/common

# Bring in some audio files
include frameworks/base/data/sounds/OriginalAudio.mk

PRODUCT_COPY_FILES += \
    vendor/hyperdroid/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/hyperdroid/prebuilt/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/hyperdroid/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/hyperdroid/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
    vendor/hyperdroid/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/hyperdroid/prebuilt/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/hyperdroid/prebuilt/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/hyperdroid/prebuilt/etc/profile:system/etc/profile \
    vendor/hyperdroid/prebuilt/etc/init.local.rc:system/etc/init.local.rc \
    vendor/hyperdroid/prebuilt/etc/init.d/01modules:system/etc/init.d/01modules \
    vendor/hyperdroid/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/hyperdroid/prebuilt/etc/init.d/11dalviklocation:system/etc/init.d/11dalviklocation \
    vendor/hyperdroid/prebuilt/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/hyperdroid/prebuilt/etc/init.d/98zipalign:system/etc/init.d/98zipalign \
    vendor/hyperdroid/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/hyperdroid/prebuilt/bin/handle_compcache:system/bin/handle_compcache \
    vendor/hyperdroid/prebuilt/bin/compcache:system/bin/compcache \
    vendor/hyperdroid/prebuilt/bin/fix_permissions:system/bin/fix_permissions \
    vendor/hyperdroid/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/hyperdroid/prebuilt/bin/zipalign:system/bin/zipalign \
    vendor/hyperdroid/prebuilt/xbin/htop:system/xbin/htop \
    vendor/hyperdroid/prebuilt/xbin/irssi:system/xbin/irssi \
    vendor/hyperdroid/prebuilt/xbin/powertop:system/xbin/powertop \
    vendor/hyperdroid/prebuilt/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

    PRODUCT_COPY_FILES += \
	vendor/hyperdroid/proprietary/gapps/app/GenieWidget.apk:/system/app/GenieWidget.apk \
	vendor/hyperdroid/proprietary/gapps/app/Gmail.apk:/system/app/Gmail.apk \
	vendor/hyperdroid/proprietary/gapps/app/GoogleBackupTransport.apk:/system/app/GoogleBackupTransport.apk \
	vendor/hyperdroid/proprietary/gapps/app/GoogleCalendarSyncAdapter.apk:/system/app/GoogleCalendarSyncAdapter.apk \
	vendor/hyperdroid/proprietary/gapps/app/GoogleContactsSyncAdapter.apk:/system/app/GoogleContactsSyncAdapter.apk \
	vendor/hyperdroid/proprietary/gapps/app/GoogleFeedback.apk:/system/app/GoogleFeedback.apk \
	vendor/hyperdroid/proprietary/gapps/app/GooglePartnerSetup.apk:/system/app/GooglePartnerSetup.apk \
	vendor/hyperdroid/proprietary/gapps/app/GoogleQuickSearchBox.apk:/system/app/GoogleQuickSearchBox.apk \
	vendor/hyperdroid/proprietary/gapps/app/GoogleServicesFramework.apk:/system/app/GoogleServicesFramework.apk \
	vendor/hyperdroid/proprietary/gapps/app/kickback.apk:/system/app/Kickback.apk \
	vendor/hyperdroid/proprietary/gapps/app/LatinImeTutorial.apk:/system/app/LatinImeTutorial.apk \
	vendor/hyperdroid/proprietary/gapps/app/Maps.apk:/system/app/Maps.apk \
	vendor/hyperdroid/proprietary/gapps/app/MarketUpdater.apk:/system/app/MarketUpdater.apk \
	vendor/hyperdroid/proprietary/gapps/app/MediaUploader.apk:/system/app/MediaUploader.apk \
	vendor/hyperdroid/proprietary/gapps/app/Microbes.apk:/system/app/Microbes.apk \
	vendor/hyperdroid/proprietary/gapps/app/NetworkLocation.apk:/system/app/NetworkLocation.apk \
	vendor/hyperdroid/proprietary/gapps/app/OneTimeInitializer.apk:/system/app/OneTimeInitializer.apk \
	vendor/hyperdroid/proprietary/gapps/app/SetupWizard.apk:/system/app/SetupWizard.apk \
	vendor/hyperdroid/proprietary/gapps/app/soundback.apk:/system/app/Soundback.apk \
	vendor/hyperdroid/proprietary/gapps/app/Street.apk:/system/app/Street.apk \
	vendor/hyperdroid/proprietary/gapps/app/Talk.apk:/system/app/Talk.apk \
	vendor/hyperdroid/proprietary/gapps/app/talkback.apk:/system/app/Talkback.apk \
	vendor/hyperdroid/proprietary/gapps/app/Vending.apk:/system/app/Vending.apk \
	vendor/hyperdroid/proprietary/gapps/app/VoiceSearch.apk:/system/app/VoiceSearch.apk \
	vendor/hyperdroid/proprietary/gapps/app/YouTube.apk:/system/app/YouTube.apk \
	vendor/hyperdroid/proprietary/gapps/etc/permissions/android.software.sip.voip.xml:/system/etc/permissions/android.software.sip.voip.xml \
	vendor/hyperdroid/proprietary/gapps/etc/permissions/com.google.android.maps.xml:/system/etc/permissions/com.google.android.maps.xml \
	vendor/hyperdroid/proprietary/gapps/etc/permissions/features.xml:/system/etc/permissions/features.xml \
	vendor/hyperdroid/proprietary/gapps/framework/com.google.android.maps.jar:/system/framework/com.google.android.maps.jar \
	vendor/hyperdroid/proprietary/gapps/lib/libmicrobes_jni.so:/system/lib/libmicrobes_jni.so \
	vendor/hyperdroid/proprietary/gapps/lib/libvoicesearch.so:/system/lib/libvoicesearch.so

# add the new boot animation
PRODUCT_COPY_FILES += \
	vendor/hyperdroid/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGES += \
    LatinIME
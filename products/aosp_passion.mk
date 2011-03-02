# Inherit AOSP device configuration for passion.
$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/macsa/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/macsa/products/gsm.mk)

# Broadcom FM
$(call inherit-product, vendor/macsa/products/bcm_fm_radio.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=/media/COMPILER/mydroid/Kernels/aosp-kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=aosp_mahimahi_defconfig

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/passion

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperAosp-ST@-Nexus-2.6

#
# Copy Passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/passion/etc/super/04modulos:system/etc/super/04modulos \
	vendor/macsa/prebuilt/passion/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/macsa/prebuilt/passion/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/passion/etc/super2/03gps:system/etc/super2/03gps \
	vendor/macsa/prebuilt/passion/etc/super2/04control:system/etc/super2/04control

PRODUCT_LOCALES := \
    es_ES \
    ca_ES \
    en_US \
    de_DE \
    eu_ES \
    fr_FR \
    it_IT \
    hdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES

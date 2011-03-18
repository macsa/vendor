# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/macsa/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/macsa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRI54 BUILD_DISPLAY_ID=GRI54 BUILD_FINGERPRINT=google/soju/crespo:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.3 GRI54 102588 release-keys"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/crespo

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperAosp-ST@-Nexus-S-2.8.6

#
# Copy Nexus S specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/crespo/etc/super/04modulos:system/etc/super/04modulos \
	vendor/macsa/prebuilt/crespo/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/macsa/prebuilt/crespo/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/crespo/etc/super2/03gps:system/etc/super2/03gps \
	vendor/macsa/prebuilt/crespo/etc/super2/04control:system/etc/super2/04control

PRODUCT_LOCALES := \
    es_ES \
    ca_ES \
    en_US \
    de_DE \
    eu_ES \
    fr_FR \
    it_IT \
    pt_PT \
    ru_RU \
    hdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES
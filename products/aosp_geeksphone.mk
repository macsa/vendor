# Inherit AOSP device configuration for geeksphone one.
$(call inherit-product, device/geeksphone/one/one.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/macsa/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/macsa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_geeksphone
PRODUCT_BRAND := geeksphone
PRODUCT_DEVICE := one
PRODUCT_MODEL := Geeksphone ONE
PRODUCT_MANUFACTURER := Geeksphone
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=geeksphone-one PRODUCT_NAME=geeksphone_one BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=one-kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=superatmel2_defconfig

# Include the Gallery
PRODUCT_PACKAGES += \
	Gallery \
	Stk

PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/geeksphone

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

#
# Set ro.modversion
#

    PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperAosp-2.8

# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/one/etc/super/04modulos:system/etc/super/04modulos \
	vendor/macsa/prebuilt/one/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/macsa/prebuilt/one/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/one/etc/super2/03gps:system/etc/super2/03gps \
	vendor/macsa/prebuilt/one/etc/super2/04control:system/etc/super2/04control

#PRODUCT_LOCALES := \
 #   ca_ES \
 #   es_ES \
 #   en_US \
 #   de_DE \
 #   eu_ES \
 #   fr_FR \
 #   it_IT \
 #   mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES

# Inherit AOSP device configuration for zero.
$(call inherit-product, device/geeksphone/zero/zero.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/macsa/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/macsa/products/gsm.mk)

#Activa el ADWLauncher
PRODUCT_PACKAGES += \
   ADWLauncher

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_zero
PRODUCT_BRAND := geeksphone
PRODUCT_DEVICE := zero
PRODUCT_MODEL := Geeksphone ZERO
PRODUCT_MANUFACTURER := Geeksphone

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=aosp_zero PRODUCT_NAME=aosp_zero BUILD_ID=GRI54 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI54 102588 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=/media/COMPILER/mydroid/Kernels/Geeksphone/Zero
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=aosp_defconfig

PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/zero

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperAosp-ST@-ZERO-6.4 \
    ro.stats.romversion=6.4

# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/zero/etc/super/04modulos:system/etc/super/04modulos \
	vendor/macsa/prebuilt/zero/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/macsa/prebuilt/zero/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/zero/etc/super2/03gps:system/etc/super2/03gps \
	vendor/macsa/prebuilt/zero/etc/super2/04control:system/etc/super2/04control

PRODUCT_LOCALES := es_ES ca_ES en_US de_DE eu_ES fr_FR it_IT pt_PT ru_RU mdpi

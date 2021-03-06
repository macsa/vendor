# Inherit AOSP device configuration for geeksphone one.
$(call inherit-product, device/geeksphone/one/one.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/macsa/products/common_small.mk)

# Include GSM stuff
$(call inherit-product, vendor/macsa/products/gsm.mk)

#Activa el ADWLauncher
PRODUCT_PACKAGES += \
   Launcher2
#   ADWLauncher

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_geeksphone
PRODUCT_BRAND := geeksphone
PRODUCT_DEVICE := one
PRODUCT_MODEL := Geeksphone ONE
PRODUCT_MANUFACTURER := Geeksphone
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=geeksphone-one PRODUCT_NAME=geeksphone_one BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=/media/COMPILER/mydroid/Kernels/kernel-one
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=superatmel2_defconfig

PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/one

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperAosp-ST@-ONE-8.0 \
    ro.stats.romversion=8.0 \
    ro.config.play.bootsound=0

# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/one/etc/super/02ctrlwipe:system/etc/super/02ctrlwipe \
	vendor/macsa/prebuilt/one/etc/super/04modulos:system/etc/super/04modulos \
	vendor/macsa/prebuilt/one/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/macsa/prebuilt/one/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/one/etc/super2/04control:system/etc/super2/04control

PRODUCT_LOCALES := es_ES ca_ES en_US de_DE eu_ES fr_FR it_IT pt_PT ru_RU mdpi

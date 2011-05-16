# Inherit AOSP device configuration for dream_sapphire.
$(call inherit-product, device/htc/dream_sapphire/full_dream_sapphire.mk)

# Inherit some common macsa stuff.
$(call inherit-product, vendor/macsa/products/common.mk)

# Añadimos los temas
$(call inherit-product, vendor/macsa/products/themes_small.mk)

# Include GSM stuff
$(call inherit-product, vendor/macsa/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := aosp_dream_sapphire
PRODUCT_BRAND := google
PRODUCT_DEVICE := dream_sapphire
PRODUCT_MODEL := Dream/Sapphire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=tmobile/opal/sapphire/sapphire:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="opal-user 2.2.1 FRG83 60505 release-keys"


# Extra Dream/Sapphire overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/dream_sapphire

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-magic
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=aosp_msm_defconfig

#Activa el ADWLauncher
PRODUCT_PACKAGES += \
   ADWLauncher

# Include apps
PRODUCT_PACKAGES += Gallery

PRODUCT_COPY_FILES += \
	vendor/macsa/prebuilt/dream_sapphire/etc/super/02audio:system/etc/super/02audio

# Enable Compcache by default on D/S
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=SuperAosp-ST@-DS-6.4 \
  ro.stats.romversion=6.4 \
	ro.compcache.default=18 \
	ro.config.alarm_alert=Beeps.mp3 \
	ro.config.ringtone=Theway.mp3 \
	ro.config.notification_sound=Bubbles.ogg \
	ro.product.multi_touch_enabled=true

# Use the audio profile hack
WITH_DS_HTCACOUSTIC_HACK := true

#
# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/dream_sapphire/etc/AudioPara_dream.csv:system/etc/AudioPara_dream.csv \
	vendor/macsa/prebuilt/dream_sapphire/etc/AudioPara_sapphire.csv:system/etc/AudioPara_sapphire.csv \
	vendor/macsa/prebuilt/dream_sapphire/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/dream_sapphire/etc/super2/03sound:system/etc/super2/03sound \
	vendor/macsa/prebuilt/dream_sapphire/etc/super2/04control:system/etc/super2/04control \
	vendor/macsa/prebuilt/dream_sapphire/etc/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	vendor/macsa/prebuilt/dream_sapphire/system/usr/keychars/trout-keypad-v3.kcm.bineu:system/usr/keychars/trout-keypad-v3.kcm.bineu \
	vendor/macsa/prebuilt/dream_sapphire/system/usr/keychars/trout-keypad-v3.kcm.binus:system/usr/keychars/trout-keypad-v3.kcm.binus \
	vendor/macsa/prebuilt/dream_sapphire/system/usr/keychars/trout-keypad-v3.kcm.bineu:system/usr/keychars/trout-keypad-v3.kcm.bin \
	vendor/macsa/prebuilt/dream_sapphire/system/usr/keylayout/trout-keypad-v3.kleu:system/usr/keylayout/trout-keypad-v3.kleu \
	vendor/macsa/prebuilt/dream_sapphire/system/usr/keylayout/trout-keypad-v3.klus:system/usr/keylayout/trout-keypad-v3.klus \
	vendor/macsa/prebuilt/dream_sapphire/system/usr/keylayout/trout-keypad-v3.kleu:system/usr/keylayout/trout-keypad-v3.kl

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
    pl_PL \
    mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES

#copiamos los recursos para el núcleo.
PRODUCT_COPY_FILES += \
    vendor/macsa/prebuilt/kernels/dream_sapphire/2708-modules.sqf:system/lib/modules/modules.sqf \
    vendor/macsa/prebuilt/dream_sapphire/etc/init.d/12zram_compcache:system/etc/init.d/12zram_compcache

TARGET_BUILD_TYPE=release
$(call inherit-product, device/htc/hero/full_hero.mk)

$(call inherit-product, vendor/macsa/products/common_full.mk)

$(call inherit-product, vendor/macsa/products/gsm.mk)

PRODUCT_NAME := aosp_hero
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := hero
PRODUCT_MODEL := Hero
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRI40 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/macsa/prelink-linux-arm-hero.map

PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=$(TOP)/vendor/macsa/prebuilt/kernels/hero/kernel

PRODUCT_PACKAGE_OVERLAYS += vendor/macsa/overlay/hero

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

PRODUCT_PACKAGES += \
    Gallery

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperAosp-ST@-Hero-6.2 \
    ro.stats.romversion=6.2

PRODUCT_COPY_FILES +=  \
	vendor/macsa/prebuilt/hero/etc/super/04modulos:system/etc/super/04modulos \
	vendor/macsa/prebuilt/hero/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/macsa/prebuilt/hero/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/macsa/prebuilt/hero/etc/super2/03sound:system/etc/super2/03sound \
	vendor/macsa/prebuilt/hero/etc/super2/04control:system/etc/super2/04control

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
    mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES

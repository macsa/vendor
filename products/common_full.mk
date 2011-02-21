# Inherit common stuff
$(call inherit-product, vendor/macsa/products/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AudioPackage5.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Uprising.ogg \
    ro.config.notification_sound=Bubbles.ogg

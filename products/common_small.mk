# Inherit common stuff
$(call inherit-product, vendor/macsa/products/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AudioPackage6.mk

# Theme packages
include vendor/macsa/products/themes_small.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Theway.mp3 \
    ro.config.notification_sound=Bubbles.ogg

# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Halium stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/halium.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

-include device/google/bonito/sargo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_sargo
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 9 PQ3B.190605.006 5560048 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:9/PQ3B.190605.006/5560048:user/release-keys

# Include sargo before bonito to use sargo versions of blobs if they exist
$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)

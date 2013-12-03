# GSM common.
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Device configuration.
$(call inherit-product, device/htc/marvel/device_marvel.mk)

## Device identifier.
PRODUCT_DEVICE := marvel
PRODUCT_NAME := aospe_marvel
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S A510e
PRODUCT_MANUFACTURER := HTC

PRODUCT_VERSION_DEVICE_RELEASE := 
PRODUCT_VERSION_DEVICE_SPECIFIC := $(PRODUCT_VERSION_DEVICE_RELEASE)-V0

AOSPE_BUILDTYPE := OFFICIAL
AOSPE_EXTRAVERSION := $(PRODUCT_VERSION_DEVICE_RELEASE)

BUILD_ID := KRT16S

# Build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID=KRT16S \
    BUILD_FINGERPRINT=htc/marvel/KRT16S/ BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) \
    PRIVATE_BUILD_DESC=aospe/htc/marvel:4.4/KRT16S/$(BUILD_ID)/v0.1:user/release-keys

# Release name
PRODUCT_RELEASE_NAME := Sero7pro

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common CM stuff.
$(call inherit-product, device/hisense/m470/full_m470.mk)

# Enhanced NFC
# $(call inherit-product, vendor/carbon/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, vendor/carbon/config/common_tablet.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m470
PRODUCT_NAME := carbon_m470
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := Sero 7 Pro
PRODUCT_MANUFACTURER := Hisense

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m470 BUILD_FINGERPRINT="Hisense/m470/m470:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date):$(TARGET_BUILD_VARIANT)/test-keys" PRIVATE_BUILD_DESC="m470-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date) test-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

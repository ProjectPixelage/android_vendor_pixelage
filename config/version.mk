PIXELAGE_DATE_YEAR := $(shell date -u +%Y)
PIXELAGE_DATE_MONTH := $(shell date -u +%m)
PIXELAGE_DATE_DAY := $(shell date -u +%d)
PIXELAGE_DATE_HOUR := $(shell date -u +%H)
PIXELAGE_DATE_MINUTE := $(shell date -u +%M)
PIXELAGE_BUILD_DATE_UTC := $(shell date -d '$(PIXELAGE_DATE_YEAR)-$(PIXELAGE_DATE_MONTH)-$(PIXELAGE_DATE_DAY) $(PIXELAGE_DATE_HOUR):$(PIXELAGE_DATE_MINUTE) UTC' +%s)
PIXELAGE_BUILD_DATE := $(PIXELAGE_DATE_YEAR)$(PIXELAGE_DATE_MONTH)$(PIXELAGE_DATE_DAY)-$(PIXELAGE_DATE_HOUR)$(PIXELAGE_DATE_MINUTE)

PIXELAGE_DISPLAY_VERSION := 2.0

PIXELAGE_PLATFORM_VERSION := 15.0

PIXELAGE_VERSION := v$(PIXELAGE_DISPLAY_VERSION)-$(PIXELAGE_BUILD)-$(PIXELAGE_PLATFORM_VERSION)-$(PIXELAGE_BUILD_DATE)

# Pixelage Platform Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.pixelage.build.date=$(BUILD_DATE) \
    ro.pixelage.device=$(PIXELAGE_BUILD) \
    ro.pixelage.fingerprint=$(ROM_FINGERPRINT) \
    ro.pixelage.version=$(PIXELAGE_VERSION) \
    ro.modversion=$(PIXELAGE_VERSION)

# Signing
-include vendor/pixelage-priv/keys/keys.mk

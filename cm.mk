# Inherit device configuration for rockchip.
$(call inherit-product, device/rockchip/xtab100qcr/full_rk3066.mk)


# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

$(call inherit-product, device/rockchip/xtab100qcr/rk3066-blobs.mk)

# Setup device specific product configuration.
#
PRODUCT_NAME := cm_xtab100qcr
PRODUCT_BRAND := rockhip
PRODUCT_DEVICE := xtab100qcr
PRODUCT_MODEL := WayteQ xTAB100QCR
PRODUCT_MANUFACTURER := WayteQ


LOCAL_PATH := device/TCL/Alto45

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img

# System Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Screen density
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

#$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)

$(call inherit-product, build/target/product/full.mk)

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8916

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916

# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libmm-qcamera


PRODUCT_NAME := omni_Alto45

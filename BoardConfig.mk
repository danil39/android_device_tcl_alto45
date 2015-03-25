# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_PREBUILT_KERNEL := device/TCL/Alto45/kernel
TARGET_CUSTOM_KERNEL_HEADERS := device/TCL/Alto45/include
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.bootloader=L2CMS0S0BG00
BOARD_KERNEL_BASE := 0x80000000 
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := -dt device/TCL/Alto45/dt.img --board B2CMS0S0BG00 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100


# Qualcomm Hardware
#BOARD_USES_QCOM_HARDWARE := true
#TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
#COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
#TARGET_USES_QCOM_BSP := true
#HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true


PROTOBUF_SUPPORTED := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
HAVE_SELINUX := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true


# TWRP-Specific
TARGET_RECOVERY_FSTAB := device/TCL/Alto45/recovery.fstab
TARGET_CUSTOM_KERNEL_HEADERS := device/TCL/Alto45/twrp/include
DEVICE_RESOLUTION := 480x854
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_TARGET_USES_QCOM_BSP := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#RECOVERY_SDCARD_ON_DATA := true
#BOARD_HAS_NO_REAL_SDCARD := false
TW_INTERNAL_STORAGE_PATH := /data/media/0
TW_INTERNAL_STORAGE_MOUNT_POINT := /internal_sd
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_THEME := portrait_mdpi

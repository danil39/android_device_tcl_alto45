LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),Alto45)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif

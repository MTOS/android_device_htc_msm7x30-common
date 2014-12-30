LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR),htc)
ifeq ($(TARGET_BOARD_PLATFORM),msm7x30)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
endif

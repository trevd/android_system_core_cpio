# Copyright 2005 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES := \
	mkbootfs.c \
	utils_windows.c

LOCAL_MODULE := mkbootfs

LOCAL_FORCE_STATIC_EXECUTABLE := true

include $(BUILD_HOST_EXECUTABLE)

$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_LDLIBS := -llog
LOCAL_MODULE := ndk-aes

LOCAL_SRC_FILES := ndk-aes.c

include $(BUILD_SHARED_LIBRARY)
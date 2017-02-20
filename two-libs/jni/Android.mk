LOCAL_PATH:= $(call my-dir)

#first lib
include $(CLEAR_VARS)

LOCAL_MODULE := libtwolib-first
LOCAL_SRC_FILES := first.c

include $(BUILD_STATIC_LIBRARY)

#second libtwolib-first

include $(CLEAR_VARS)

LOCAL_MODULE := libtwolib-second
LOCAL_SRC_FILES := second.c

LOCAL_STATIC_LIBRARIES := libtwolib-first

include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(call my-dir)
FILE_LIST := $(wildcard $(LOCAL_PATH)/*.cpp)
include $(CLEAR_VARS)
LOCAL_MODULE := foo
LOCAL_SRC_FILES := foo/foo.c
LOCAL_CFLAGS := -DFOO=2
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/foo
LOCAL_EXPORT_CFLAGS := -DFOO=1
LOCAL_EXPORT_LDLIBS := -llog
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := bar
LOCAL_SRC_FILES := bar/bar.c
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/bar
LOCAL_STATIC_LIBRARIES := foo
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := zoo
LOCAL_SRC_FILES := zoo/zoo.c
LOCAL_SHARED_LIBRARIES := bar
include $(BUILD_SHARED_LIBRARY)
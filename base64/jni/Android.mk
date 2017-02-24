LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_LDLIBS := -llog
LOCAL_MODULE := security
# FILE_LIST := $(wildcard $(LOCAL_PATH)/*.cpp)   #把相关的文件cpp都加载进来,空一格，写其他的cpp路径
# LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)   #源码的所在位置，分开写的
LOCAL_SRC_FILES := security.cpp base64.cpp

include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

ANDROID_INCLUDE := $(LOCAL_PATH)/android/include
ANDROID_LIB := $(LOCAL_PATH)/android/lib

LOCAL_CFLAGS += -DHAVE_PTHREADS -DHAVE_SYS_UIO_H

LOCAL_C_INCLUDES += $(ANDROID_INCLUDE)/system/core/include
LOCAL_C_INCLUDES += $(ANDROID_INCLUDE)/frameworks/native/include

LOCAL_LDLIBS += -L$(ANDROID_LIB)
LOCAL_LDLIBS += -llog -lutils -lbinder

LOCAL_SRC_FILES := BinderSHM.cpp

LOCAL_MODULE := ipc_shared
include $(BUILD_SHARED_LIBRARY)




include $(CLEAR_VARS)

ANDROID_INCLUDE := $(LOCAL_PATH)/android/include
ANDROID_LIB := $(LOCAL_PATH)/android/lib

LOCAL_CFLAGS += -DHAVE_PTHREADS -DHAVE_SYS_UIO_H

LOCAL_C_INCLUDES += $(ANDROID_INCLUDE)/system/core/include
LOCAL_C_INCLUDES += $(ANDROID_INCLUDE)/frameworks/native/include

LOCAL_LDLIBS += -L$(ANDROID_LIB)
LOCAL_LDLIBS += -llog -lutils -lbinder

LOCAL_SRC_FILES := BinderSHM.cpp

LOCAL_MODULE := ipc
include $(BUILD_EXECUTABLE)

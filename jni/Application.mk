NDK_TOOLCHAIN_VERSION=4.8

APP_ABI := armeabi-v7a
APP_PLATFORM := android-18

APP_STL := stlport_static
APP_CPPFLAGS += -fno-rtti -Wno-psabi -Wno-switch
STLPORT_FORCE_REBUILD := false

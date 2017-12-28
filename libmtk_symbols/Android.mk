LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    crypto_malloc.c \
    mtk_wvm.cpp \
    mtk_ui.cpp \
    mtk_ril.cpp \
    icu51.c \
    icu53.c \
    icu55.c \
    bionic.cpp

LOCAL_SHARED_LIBRARIES := libbinder liblog libicuuc libui libcrypto
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

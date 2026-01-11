ARCHS := arm64 arm64e
TARGET := iphone:clang:16.5:15.0
INSTALL_TARGET_PROCESSES = SpringBoard

DEBUG=0
FINALPACKAGE=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SpringBoardStyleDark

SpringBoardStyleDark_FILES = SpringBoardStyleDark.m
SpringBoardStyleDark_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

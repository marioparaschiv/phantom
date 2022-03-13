ARCHS := arm64 arm64e
TARGET := iphone:clang:11.4:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Phantom
Phantom_FILES = $(shell find src -name "*.x")
Phantom_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
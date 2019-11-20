INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e
SYSROOT = $(THEOS)/sdks/iPhoneOS11.2.sdk
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Oxylabels




Oxylabels_FILES = Tweak.x
Oxylabels_CFLAGS += -fobjc-arc 

include $(THEOS_MAKE_PATH)/tweak.mk

include $(THEOS_MAKE_PATH)/aggregate.mk


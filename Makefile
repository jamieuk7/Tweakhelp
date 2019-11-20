INSTALL_TARGET_PROCESSES = SpringBoard
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
ARCHS = arm64 arm64e
SYSROOT = $(THEOS)/sdks/iPhoneOS11.2.sdk
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Oxylabels


dtoim = $(foreach d,$(1),-I$(d))


_IMPORTS =  $(shell /bin/ls -d ./Oxylabels/*/)
_IMPORTS +=  $(shell /bin/ls -d ./Oxylabels/*/*/)
_IMPORTS += $(shell /bin/ls -d ./)
IMPORTS = -I$./Oxylabels $(call dtoim, $(_IMPORTS))

SOURCES = $(shell find HomePlusEditor -name '*.m')
Oxylabels_FILES = Tweak.xm ${SOURCES}
Oxylabels_CFLAGS += -fobjc-arc -w $(IMPORTS)

include $(THEOS_MAKE_PATH)/tweak.mk

include $(THEOS_MAKE_PATH)/aggregate.mk
THEOS_DEVICE_IP = 192.168.1.82

TARGET := iphone:clang:latest:7.0
export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = firsttweak

firsttweak_FILES = Tweak.xm
firsttweak_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
SUBPROJECTS += firsttweakpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk

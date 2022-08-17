TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = firsttweakpreferences

firsttweakpreferences_FILES = FirstRootListController.m
firsttweakpreferences_FRAMEWORKS = UIKit
firsttweakpreferences_PRIVATE_FRAMEWORKS = Preferences
firsttweakpreferences_INSTALL_PATH = /Library/PreferenceBundles
firsttweakpreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

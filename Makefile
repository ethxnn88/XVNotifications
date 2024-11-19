TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_DEVICE_IP=localhost
THEOS_DEVICE_PORT=2222
THEOS_PACKAGE_SCHEME=rootless

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = XVNotifications

XVNotifications_FILES = Tweak.xm
XVNotifications_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

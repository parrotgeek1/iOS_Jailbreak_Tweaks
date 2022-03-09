include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoBetaAlert
NoBetaAlert_FILES = Tweak.xm
NoBetaAlert_ARCHS = armv7 arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

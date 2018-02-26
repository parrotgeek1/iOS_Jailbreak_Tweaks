export ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = BetterRotateiPad
BetterRotateiPad_FILES = Tweak.xm
BetterRotateiPad_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += betterrotateprefs
include $(THEOS_MAKE_PATH)/aggregate.mk

include theos/makefiles/common.mk

BUNDLE_NAME = BetterRotatePrefs
BetterRotatePrefs_FILES = BetterRotatePrefs.mm
BetterRotatePrefs_INSTALL_PATH = /Library/PreferenceBundles
BetterRotatePrefs_FRAMEWORKS = UIKit
BetterRotatePrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BetterRotatePrefs.plist$(ECHO_END)

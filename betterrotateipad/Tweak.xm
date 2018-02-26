#import <Foundation/Foundation.h>

#ifndef kCFCoreFoundationVersionNumber_iOS_7_0
#define kCFCoreFoundationVersionNumber_iOS_7_0 847.20
#endif

static BOOL enabled;
static UIInterfaceOrientation orient;
static BOOL first;

@interface FirstRunBRDelegate: NSObject <UIAlertViewDelegate>

@end

@implementation FirstRunBRDelegate

- (void)alertView:(UIAlertView *)alertView
didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
     
    if([title isEqualToString:@"Settings"])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=BetterRotate"]];
    }
}

@end

static void AlertIfNeeded() {

    if(first) {
    first = NO;
    UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Thanks for installing BetterRotate!"
        message:@"Don't forget to check out the options in Settings."
        delegate:[FirstRunBRDelegate new]
        cancelButtonTitle:@"Dismiss"
        otherButtonTitles:@"Settings",nil];
    [alert1 show];
    }

}

%group Common

%hook SBIconListView

+ (unsigned int)iconColumnsForInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return (enabled ? %orig(orient) : %orig);
}

+ (unsigned int)maxVisibleIconRowsInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return (enabled ? %orig(orient) : %orig);
}

+ (unsigned int)iconRowsForInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return (enabled ? %orig(orient) : %orig);
}

%end

// iOS 7+
%hook SBLockScreenManager
- (void) _finishUIUnlockFromSource:(int)source withOptions:(id)options {
    %orig;
    AlertIfNeeded();
}
%end

%end

%group Legacy

%hook SBFolderIconListView

+ (unsigned int)iconColumnsForInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return (enabled ? %orig(orient) : %orig);
}

+ (unsigned int)iconRowsForInterfaceOrientation:(UIInterfaceOrientation)orientation {
	return (enabled ? %orig(orient) : %orig);
}

%end

%hook SBAppSwitcherBarView

+ (unsigned int)iconsPerPage:(int)arg1 {
	return (enabled ? 7 : 6);
}

%end

// iOS 6
%hook SBAwayController
- (void) _finishUnlockWithSound:(BOOL)sound unlockSource:(int)source isAutoUnlock:(BOOL)is {
    %orig;
    AlertIfNeeded();
}
%end

// iOS 5
%hook SBAwayController
- (void) _unlockWithSound:(BOOL)sound isAutoUnlock:(BOOL)is unlockSource:(int)source {
    %orig;
    AlertIfNeeded();
}
%end

// iOS 4.3 XXX: check lower versions
%hook SBAwayController
- (void) _unlockWithSound:(BOOL)sound isAutoUnlock:(BOOL)is unlockType:(int)type {
    %orig;
    AlertIfNeeded();
}
%end

// -[SBIconController showInfoAlertIfNeeded] explains how to drag icons around the iPhone home screen
// it used to be shown to users when they unlocked their screen for the first time, and happened every unlock
// however, as of iOS 4.3, it got relegated to only appearing once the user installed an app or web clip

%hook SBIconController
- (void) showInfoAlertIfNeeded {
    AlertIfNeeded();
}
%end

%end

%ctor {
	if (NSDictionary *prefs = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"net.parrotgeek.br.ipad"]) {
		enabled = [prefs[@"enabled"] boolValue];
		orient = (UIInterfaceOrientation)[prefs[@"orient"] intValue];
		first = NO;

	} else {
		first = YES;
		prefs = @{
			@"enabled": @YES,
			@"orient": @4, // UIInterfaceOrientationLandscapeLeft 
			};
		[[NSUserDefaults standardUserDefaults] setPersistentDomain:prefs forName:@"net.parrotgeek.br.ipad"];

		enabled = YES;
		orient = UIInterfaceOrientationLandscapeLeft;
	}
if (kCFCoreFoundationVersionNumber < kCFCoreFoundationVersionNumber_iOS_7_0) {
		%init(Legacy);
	} 
		%init(Common);
}

/*
investigate

SB*IconListView:
- (float)verticalIconPadding;
- (float)horizontalIconPadding;
- (float)horizontalBumpForColumn:(unsigned int)arg1;
- (float)sideIconInset;

both:
- (float)bottomIconInset;
- (float)topIconInset;
*/
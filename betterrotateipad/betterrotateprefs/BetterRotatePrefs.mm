#import <Preferences/Preferences.h>

@interface BetterRotatePrefsListController: PSListController {
}
@end

@implementation BetterRotatePrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BetterRotatePrefs" target:self] retain];
	}
	return _specifiers;
}
-(void)respring:(PSSpecifier*)spec {
if ([[[UIDevice currentDevice] systemVersion] intValue] >= 6) {
	system("killall backboardd");
} else {
	system("killall SpringBoard");
}
}
-(void)twitter:(PSSpecifier*)spec {
  if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot://"]]) {

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tweetbot:///user_profile/parrotgeek1"]];

  } else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter://"]]) {

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=parrotgeek1"]];

  } else {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/parrotgeek1"]];
}
}
-(void)website:(PSSpecifier*)spec {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.parrotgeek.com/"]];

}
@end

// vim:ft=objc

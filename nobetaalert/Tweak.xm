%hook SBIconController

// 8

-(void)showDeveloperBuildExpirationAlertIfNecessary {}

// 9+10
- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(_Bool)arg1 toLauncher:(_Bool)arg2 {}

%end

// 11
%hook SBDeveloperBuildExpirationTrigger

- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(_Bool)arg1 toLauncher:(_Bool)arg2 {}

%end

%hook SBPlatformController

- (_Bool)isDeveloperDevice { return NO; }

%end

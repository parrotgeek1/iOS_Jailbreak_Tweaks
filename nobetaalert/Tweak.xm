%hook SBIconController

// 8

-(void)showDeveloperBuildExpirationAlertIfNecessary {}

// 9+10
- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(_Bool)arg1 toLauncher:(_Bool)arg2 {}

%end

// 11
%hook SBDeveloperBuildExpirationTrigger

- (void)showDeveloperBuildExpirationAlertIfNecessaryFromLockscreen:(_Bool)arg1 toLauncher:(_Bool)arg2 {}
//Expiration property moved  in 11.4 beta 3
- (NSDate *)expirationDate { return [NSDate distantFuture]; }

%end

// might help
%hook SBLockdownManager
- (id)developerBuildExpirationDate { return [NSDate distantFuture]; }
%end

//Import UIKit
#import <UIKit/UIKit.h>

#define kPath @"/var/mobile/Library/Preferences/firsttweakpreferences.plist"     

@interface SBDockView : UIView {

	UIView* _backgroundView;
}
@property (nonatomic,retain) UIView * backgroundView;
@end

%hook SBDockView

- (void)didMoveToWindow {

	%orig;

	UIView *bgView = MSHookIvar<UIView *>(self, "_backgroundView");

	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
	persistentDomainForName:@"com.alnoise.firsttweakpreferences"];

	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
	if ([isEnabled isEqual:@0]) {
		bgView.hidden = NO;
	} else {
		bgView.hidden = YES;
	}
}

%end
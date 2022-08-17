#import <Foundation/Foundation.h>
#import "FirstRootListController.h"

@implementation FirstRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openGithub {
	[[UIApplication sharedApplication]
	openURL: [NSURL URLWithString:@"https://github.com/alnoisegit"]
	options:@{}
	completionHandler:nil];
}

@end
#include "SMDRootListController.h"

@implementation SMDRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)bryceTwitter {
    NSString *user = @"thebryc3isright";
    if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetbot:///user_profile/" stringByAppendingString:user]]];
    else if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitterrific:///profile?screen_name=" stringByAppendingString:user]]];
    else if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetings:///user?screen_name=" stringByAppendingString:user]]];
    else if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitter://user?screen_name=" stringByAppendingString:user]]];
    else
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"https://mobile.twitter.com/" stringByAppendingString:user]]];
}

- (void)openDonateBitcoin {
    UIPasteboard *appPasteBoard = [UIPasteboard generalPasteboard];
    appPasteBoard.persistent = YES;
    [appPasteBoard setString: @"1Fa3YxEuENwiJemzo4mbc69UBJNY3xdDkn"];

    if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"bitcoin:"]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"bitcoin:"]];
}

- (void)openDonatePayPal {
    UIPasteboard *appPasteBoard = [UIPasteboard generalPasteboard];
    appPasteBoard.persistent = YES;
    [appPasteBoard setString: @"bryce@brycedev.com"];

    if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"paypal:"]])
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"paypal:"]];
    else
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://paypal.com"]];
}

@end

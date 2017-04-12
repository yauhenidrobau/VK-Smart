//
//  VKNavigationHelper.m
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import "VKNavigationHelper.h"

#import "AppDelegate.h"

@implementation VKNavigationHelper

+(void)setupRootVC {
    NSString* storyboardName = ([VKUserManager sharedInstance].isUserAuthorised) ? @"Main" : @"Login";
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:[NSBundle mainBundle]];
    UIViewController* rootVC = [storyboard instantiateInitialViewController];
    //TODO: implement animated transition
    ((AppDelegate*)[UIApplication sharedApplication].delegate).window.rootViewController = rootVC;
}
@end

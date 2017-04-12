//
//  VKManager.m
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import "VKManager.h"

#import "VKNavigationHelper.h"
#import "Constants.h"

@interface VKManager () <VKSdkDelegate>

@end

@implementation VKManager

SINGLETON(VKManager)

-(instancetype)init {
    self = [super init];
    if (self) {
        [[VKSdk initializeWithAppId:VK_APP_ID] registerDelegate:self];
    }
    return self;
}

-(void)loginWithEmail:(NSString *)email andPassword:(NSString *)password andCompletion:(BoolCompletion)completion {
}

-(void)checkAuthorizeStatus {
    
    NSArray *SCOPE = @[@"friends", @"email"];
    
    [VKSdk wakeUpSession:SCOPE completeBlock:^(VKAuthorizationState state, NSError *error) {
        switch (state) {
            case VKAuthorizationAuthorized:
                [VKNavigationHelper setupRootVC];
                break;
                
            case VKAuthorizationInitialized:
                [VKSdk authorize:@[VK_PER_FRIENDS, VK_PER_WALL,VK_PER_AUDIO, VK_PER_GROUPS, VK_PER_PHOTOS, VK_PER_MESSAGES, VK_PER_NOTIFICATIONS]];
                break;
                
            default:
                // Probably, network error occured, try call +[VKSdk wakeUpSession:completeBlock:] later
                break;
        }
    }];
}

- (void)vkSdkAccessAuthorizationFinishedWithResult:(VKAuthorizationResult *)result {
    if (result.token) {
        // User successfully authorized, you may start working with VK API
    } else if (result.error) {
        // User canceled authorization, or occured unresolving networking error. Reset your UI to initial state and try authorize user later
    }
}

- (void)vkSdkUserAuthorizationFailed {
    
}
@end

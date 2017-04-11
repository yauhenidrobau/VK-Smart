//
//  VKManager.m
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import "VKManager.h"

@implementation VKManager
SINGLETON(VKManager)

-(void)checkAuthorizeStatus {
    
    NSArray *SCOPE = @[@"friends", @"email"];
    
    [VKSdk wakeUpSession:SCOPE completeBlock:^(VKAuthorizationState state, NSError *error) {
        switch (state) {
            case VKAuthorizationAuthorized:
                [];
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
@end

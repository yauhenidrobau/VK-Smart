//
//  VKManager.h
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Macros.h"
#import <VKSdk.h>

@interface VKManager : NSObject

+(instancetype)sharedInstance;

-(void)checkAuthorizeStatus;

@end

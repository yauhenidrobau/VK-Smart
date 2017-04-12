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

typedef void(^BoolCompletion)(BOOL isTrue, NSError *error);

@interface VKManager : NSObject

+(instancetype)sharedInstance;

-(void)checkAuthorizeStatus;
-(void)loginWithEmail:(NSString*)email andPassword:(NSString*)password andCompletion:(BoolCompletion)completion;

@end

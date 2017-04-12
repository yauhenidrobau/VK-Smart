//
//  AppDelegate.m
//  VK Smart
//
//  Created by Admin on 4/12/17.
//  Copyright © 2017 Yauheni Drobau. All rights reserved.
//

#import "AppDelegate.h"

#import <VKSdk.h>

#import "VKManager.h"

#import <GCNetworkReachability.h>

#import "Constants.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /*
     VK init
     */
    [[VKManager sharedInstance] checkAuthorizeStatus];
    
    /*
     Reachability
     */
    [self startReachabilityMonitoring];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    [VKSdk processOpenURL:url fromApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]];
    return YES;
}


#pragma mark - Reachability

- (void)startReachabilityMonitoring {
//    showOfflineAlert = YES;
//    self.reachability = [GCNetworkReachability reachabilityWithHostName:@"www.google.com"];
//    [self.reachability startMonitoringNetworkReachabilityWithHandler:^(GCNetworkReachabilityStatus status) {
//        // this block is called on the main thread
//        switch (status) {
//            case GCNetworkReachabilityStatusNotReachable:
//                if (showOfflineAlert) {
//                    [self showOfflineAlert];
//                    showOfflineAlert = NO;
//                }
//                break;
//            case GCNetworkReachabilityStatusWWAN:
//            case GCNetworkReachabilityStatusWiFi:
//                if (!showOfflineAlert) {
//                    [[NSNotificationCenter defaultCenter] postNotificationName:NN_NETWORK_STATE_OK object:nil];
//                }
//                showOfflineAlert = YES;
//                break;
//        }
//    }];
}
-(void)setupVK {
//    [[VKSdk initializeWithAppId:VK_APP_ID] registerDelegate:self];
}
@end

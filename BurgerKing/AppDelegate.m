//
//  AppDelegate.m
//  BurgerKing
//
//  Created by Daniel Garcimartín Herráez on 27/9/16.
//  Copyright © 2016 Daniel Garcimartín Herráez. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize  qbAdmin;



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [PayPalMobile
     initializeWithClientIdsForEnvironments: @{PayPalEnvironmentProduction : @"YOUR_CLIENT_ID_FOR_PRODUCTION" ,
         PayPalEnvironmentSandbox : @"YOUR_CLIENT_ID_FOR_SANDBOX"}];
    
    qbAdmin = [[QBAdmin alloc]init];
    
    [qbAdmin login:@"NOMBRE"  password:@"PASS"];
    qbAdmin.delegate = self;
    
    [QBSettings setApplicationID:47851];
    [QBSettings setAuthKey:@"6SwE9cNCmWWVMdA"];
    [QBSettings setAuthSecret:@"C3XsYCsSQuZ-mFx"];
    [QBSettings setAccountKey:@"LZzoR8SCau5CmyhPC6xx"];
    

    return YES;
}

-(void)loginSuccess:(BOOL)blsuccess{
    NSLog(@"HEY HEYB %@" ,blsuccess);
    
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

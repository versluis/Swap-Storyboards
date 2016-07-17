//
//  AppDelegate.m
//  Swap Storyboards
//
//  Created by Jay Versluis on 15/07/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // display the appropriate storyboard after launch (only called once)
    [self checkHeight];
    
    return YES;
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

- (void)switchStoryboardWith:(UIStoryboard *)storyboard {
    
    self.window.rootViewController = [storyboard instantiateInitialViewController];
    [self.window makeKeyAndVisible];
}

- (void)checkHeight {
    
    // determine screen size
    int screenHeight = [UIScreen mainScreen].bounds.size.height;
    UIStoryboard *storyboard;
    
    // grab storyboard accordingly
    switch (screenHeight) {
            
            // iPad portrait
        case 1024:
            storyboard = [self grabPortraitStoryboard];
            break;
            
            // iPad landscape
        case 768:
            storyboard = [self grabLandscapeStoryboard];
            break;
            
            // iPhone 6s Plus portrait
        case 736:
            storyboard = [self grabPortraitStoryboard];
            break;
            
            // iPhone 6s Plus landscape
        case 414:
            storyboard = [self grabLandscapeStoryboard];
            break;
            
            // iPhone 6 portrait
        case 667:
            storyboard = [self grabPortraitStoryboard];
            break;
            
            // iPhone 6 landscape
        case 375:
            storyboard = [self grabLandscapeStoryboard];
            break;
            
            // iPhone 5s portrait
        case 568:
            storyboard = [self grabPortraitStoryboard];
            break;
            
            // iPhone 5s + 4s landscape
        case 320:
            storyboard = [self grabLandscapeStoryboard];
            break;
            
            // iPhone 4s portrait
        case 480:
            storyboard = [self grabPortraitStoryboard];
            break;
            
            
        default:
            break;
    }
    
    // and display the storyboard
    [self switchStoryboardWith:storyboard];
}

- (UIStoryboard *)grabPortraitStoryboard {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Portrait" bundle:nil];
    return storyboard;
}

- (UIStoryboard *)grabLandscapeStoryboard {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Landscape" bundle:nil];
    return storyboard;
}

@end

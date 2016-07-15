//
//  AppDelegate.h
//  Swap Storyboards
//
//  Created by Jay Versluis on 15/07/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void)switchStoryboardWith:(UIStoryboard *)storyboard;

@end


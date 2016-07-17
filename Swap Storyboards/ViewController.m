//
//  ViewController.m
//  Swap Storyboards
//
//  Created by Jay Versluis on 15/07/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark -

- (UIStoryboard *)grabPortraitStoryboard {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Portrait" bundle:nil];
    return storyboard;
}

- (UIStoryboard *)grabLandscapeStoryboard {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Landscape" bundle:nil];
    return storyboard;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator {
    
    // best call super just in case
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    // will execute before rotation
    [coordinator animateAlongsideTransition:^(id  _Nonnull context) {
        
        // will execute during rotation
    } completion:^(id  _Nonnull context) {
        
        // setup some references
        UIStoryboard *storyboard;
        AppDelegate *myAppDelegate = [UIApplication sharedApplication].delegate;
        
        // are we on iPad?
        if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
            
            // are we in iPad portrait mode?
            if (size.height == 1024) {
                NSLog(@"We're in portrait mode");
                
                // grab portrait storyboard
                storyboard = [self grabPortraitStoryboard];
                
                // and display it
                [myAppDelegate switchStoryboardWith:storyboard];
                
            }
            
            // are we in iPad landscape mode?
            if (size.height == 768) {
                NSLog(@"We're in landscape mode.");
                
                // grab landscape storyboard
                storyboard = [self grabLandscapeStoryboard];
                
                // and display it
                [myAppDelegate switchStoryboardWith:storyboard];
            }
        
        } else {
            
            // are we in iPhone protrait mode?
            if (size.height == 320 || size.height == 375 || size.height == 414) {
                
                // grab portrait storyboard
                storyboard = [self grabLandscapeStoryboard];
                
                // and display it
                [myAppDelegate switchStoryboardWith:storyboard];
            }
            
            // are we in iPhone landscape mode?
            if (size.height == 480 || size.height == 568 || size.height == 667 || size.height == 736) {
                
                // grab landscape storyboard
                storyboard = [self grabPortraitStoryboard];
                
                // and display it
                [myAppDelegate switchStoryboardWith:storyboard];
            }
            
        }
        
        // will execute after rotation
        
    }];
}

@end

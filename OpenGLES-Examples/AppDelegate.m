//
//  AppDelegate.m
//  OpenGLES-Examples
//
//  Created by Bernd Paradies on 12/29/15.
//  Copyright © 2015 dva. All rights reserved.
//

#import "AppDelegate.h"
#import "GLViewController.h"
#import "GLView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window;
@synthesize controller;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect	rect = [[UIScreen mainScreen] bounds];
    
    window = [[UIWindow alloc] initWithFrame:rect];
    
    GLViewController *theController = [[GLViewController alloc] init];
    self.controller = theController;
    // [theController release];
    
    GLView *glView = [[GLView alloc] initWithFrame:rect];
    [window addSubview:glView];
    
    glView.controller = controller;
    glView.animationInterval = 1.0 / kRenderingFrequency;
    [glView startAnimation];
    // [glView release];
    
    // http://stackoverflow.com/questions/30884896/application-windows-are-expected-to-have-a-root-view-controller-at-the-end-of-a
    [window setRootViewController:glView.controller];
    [window makeKeyAndVisible];

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

@end

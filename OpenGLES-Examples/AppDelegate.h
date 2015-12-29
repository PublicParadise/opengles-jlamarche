//
//  AppDelegate.h
//  OpenGLES-Examples
//
//  Created by Bernd Paradies on 12/29/15.
//  Copyright © 2015 dva. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GLViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet GLViewController *controller;


@end


//
//  AppDelegate.m
//  LWindow
//
//  Created by OranWu on 13-1-4.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "AppDelegate.h"
#import"ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
    self.window.rootViewController = navC;


    [self.window makeKeyAndVisible];

    return YES;

}
- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}
- (void)applicationDidBecomeActive:(UIApplication *)application
{
    }

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end

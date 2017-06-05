//
//  AppDelegate.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "AppDelegate.h"
#import "CHYTabbarViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
   //设置标签栏为根视图框架
    CHYTabbarViewController *tabbarVC = [[CHYTabbarViewController alloc] init];
    self.window.rootViewController = tabbarVC;
    [self.window makeKeyAndVisible];//设置window为主窗口并显示
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

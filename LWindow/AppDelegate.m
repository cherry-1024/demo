//
//  AppDelegate.m
//  LWindow
//
//  Created by HONGYU CHEN on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "AppDelegate.h"
#import"ViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "SecondViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    oneVC=[[ViewController alloc]init];
    oneVC.title=@"首页";
    twoVC=[[TwoViewController alloc]init];
    twoVC.title=@"通讯录";
    threeVC=[[ThreeViewController alloc]init];
    threeVC.title=@"发现";
    fourVC=[[FourViewController alloc]init];
    fourVC.title=@"我";
    
    nav1=[[UINavigationController alloc]initWithRootViewController:oneVC];
    nav2=[[UINavigationController alloc]initWithRootViewController:twoVC];
    nav3=[[UINavigationController alloc]initWithRootViewController:threeVC];
    nav4=[[UINavigationController alloc]initWithRootViewController:fourVC];
    
    NSArray *viewsArray=[[NSArray alloc]initWithObjects:nav1,nav2,nav3,nav4, nil];
    BookTabBarController=[[UITabBarController alloc]init];
    BookTabBarController.viewControllers=viewsArray;
    self.window.rootViewController=BookTabBarController;
    

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

//
//  CHYTabbarViewController.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/31.
//  Copyright © 2017年 csdc All rights reserved.
//

#import "CHYTabbarViewController.h"
#import "CHYHomeViewController.h"
#import "CHYConnectViewController.h"
#import "CHYFindViewController.h"
#import "CHYMeViewController.h"

@interface CHYTabbarViewController ()

@end

@implementation CHYTabbarViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    
    //首页
    CHYHomeViewController *homeVC = [[CHYHomeViewController alloc] init];
    homeVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];//设置系统自带的标签栏风格
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];//首页导航框架
    
    //通讯录
    CHYConnectViewController *connectVC = [[CHYConnectViewController alloc] init];
    connectVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2];//设置系统自带的标签栏风格
    UINavigationController *connectNav = [[UINavigationController alloc] initWithRootViewController:connectVC];//通讯录导航框架
    
    //发现
    CHYFindViewController *findVC = [[CHYFindViewController alloc] init];
    findVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:3];//设置系统自带的导航框架
    UINavigationController *findNav = [[UINavigationController alloc] initWithRootViewController:findVC];//发现导航框架
    
    //我
    CHYMeViewController *meVC = [[CHYMeViewController alloc] init];
    meVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:4];//设置系统自带的标签栏风格
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];//我的导航框架
    
    //给标签栏添加对应的模块
    [self addChildViewController:homeNav];
    [self addChildViewController:connectNav];
    [self addChildViewController:findNav];
    [self addChildViewController:meNav];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

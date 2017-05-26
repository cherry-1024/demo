//
//  CHYTabBarController.m
//  Firstdemo
//
//  Created by csdc on 2017/5/24.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "CHYTabBarController.h"
#import"CHYOneViewController.h"
#import"CHYTwoViewController.h"
#import"CHYThreeViewController.h"
#import"CHYFourViewController.h"

@implementation CHYTabBarController
- (void)viewDidLoad {
    CHYOneViewController *oneVC = [[CHYOneViewController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:oneVC];
    nav1.title = @"首页";
    oneVC.navigationItem.title = @"首页";
    oneVC.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:nav1];
    CHYTwoViewController *twoVC = [[CHYTwoViewController alloc]init];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:twoVC];
    nav2.title = @"通讯录";
    twoVC.navigationItem.title = @"通讯录";
    twoVC.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:nav2];
    CHYThreeViewController *threeVC = [[CHYThreeViewController alloc]init];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:threeVC];
    nav3.title = @"发现";
    threeVC.navigationItem.title = @"发现";
    threeVC.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:nav3];
    CHYFourViewController *fourVC = [[CHYFourViewController alloc]init];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:fourVC];
    nav4.title = @"我";
    fourVC.navigationItem.title = @"我";
    fourVC.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:nav4];
}
@end












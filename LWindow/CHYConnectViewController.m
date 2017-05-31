//
//  TwoViewController.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "CHYConnectViewController.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@implementation CHYConnectViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"通讯录";//导航栏标题
    UILabel *label=[[UILabel alloc]init];
    label.frame = CGRectMake(12 , 200 , SCREENWIDTH - 24 , 20);
    label.text=@"这是通讯录";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
}

@end

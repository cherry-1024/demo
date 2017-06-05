
//
//  ThreeViewController.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "CHYFindViewController.h"
#import "CHYHomeViewController.h"
// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@implementation CHYFindViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"发现";
    
  //添加搜索框
    UISearchBar * bar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 100, SCREENWIDTH, 40)];
    [self.view addSubview:bar];
    bar.showsBookmarkButton = YES;

    
  //添加文本
    UILabel *label=[[UILabel alloc]init];
    label.frame = CGRectMake(12 , 200 , SCREENWIDTH - 24 , 20);
    label.text=@"这是发现";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
}

@end

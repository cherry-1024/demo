//
//  TwoViewController.m
//  LWindow
//
//  Created by HONGYU CHEN on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "TwoViewController.h"

@implementation TwoViewController
- (void)viewDidLoad {
    [self.navigationItem setTitle:@"通讯录"];
    UILabel *label1=[[UILabel alloc]init];
    label1.frame=CGRectMake(38, 80, 300, 30);
    label1.text=@"这是通讯录";
    [self.view addSubview:label1];
    
    
}

@end

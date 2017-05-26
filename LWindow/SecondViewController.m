//
//  SecondViewController.m
//  LWindow
//
//  Created by csdc on 2017/5/25.
//  Copyright © 2017年 Oran Wu. All rights reserved.
//
#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [self.navigationItem setTitle:@"详情"];
    UILabel *label1=[[UILabel alloc]init];
    label1.frame=CGRectMake(38, 80, 300, 30);
    label1.text=@"这是详情";
    [self.view addSubview:label1];
    

}
@end

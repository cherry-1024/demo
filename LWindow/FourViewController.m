
//
//  FourViewController.m
//  LWindow
//
//  Created by HONGYU CHEN on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "FourViewController.h"

@implementation FourViewController
- (void)viewDidLoad {
    [self.navigationItem setTitle:@"我"];
    UILabel *label1=[[UILabel alloc]init];
    label1.frame=CGRectMake(38, 80, 300, 30);
    label1.text=@"这是我";
    [self.view addSubview:label1];
    
    
}

@end

//
//  ViewController.m
//  LWindow
//
//  Created by csdc on 2017/5/25.
//  Copyright © 2017年 Oran Wu. All rights reserved.
//
#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    

    
    UILabel *label1=[[UILabel alloc]init];
    label1.frame=CGRectMake(38, 80, 300, 30);
    label1.backgroundColor=[UIColor whiteColor];
    label1.text=@"这是首页";
    [self.view addSubview:label1];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120, 100, 80, 40);
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
  
    [self.navigationItem setTitle:@"首页"];

}
- (void)jump:(id)sender
{
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:true];
}

@end

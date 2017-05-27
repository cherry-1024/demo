//
//  AppDelegate.h
//  LWindow
//
//  Created by HONGYU CHEN on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@class TwoViewController;
@class ThreeViewController;
@class FourViewController;
@class SecondViewController;


@interface AppDelegate : UIResponder
{
    ViewController *oneVC;
    TwoViewController *twoVC;
    ThreeViewController *threeVC;
    FourViewController *fourVC;
    SecondViewController *secondVC;
    UITabBarController *BookTabBarController;
    UINavigationController *nav1;
    UINavigationController *nav2;
    UINavigationController *nav3;
    UINavigationController *nav4;
    UINavigationController *nav5;

    
}

@property(strong,nonatomic)UIWindow *window;


@end

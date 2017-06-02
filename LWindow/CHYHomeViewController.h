//
//  ViewController.h
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHYHomeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    
    NSArray *array;
    
}

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *array;


@end

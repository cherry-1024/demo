//
//  FourViewController.h
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHYMeViewController : UIViewController <UITableViewDelegate , UITableViewDataSource>{
    UITableView *personalTableView;
    NSArray *dataSource;
}

@end


//
//  FourViewController.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//

#import "CHYMeViewController.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height



@implementation CHYMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我";//导航栏标题

    //初始化personalTableView
    personalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT) style:UITableViewStyleGrouped];
    [self.view addSubview:personalTableView];
    personalTableView.delegate = self;
    personalTableView.dataSource = self;
    personalTableView.bounces = NO;
    personalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;//分割线
    dataSource = [[NSArray alloc] initWithObjects: @"我的收藏" , @"我的订单" , @"个人设置" , @"关于" , nil];

    
}

//显示personalTableView的部分数
- (NSInteger) numberOfSectionsInTableView : (UITableView*) tableView
{
    return 3;
}

//设置每个section的行数
- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection : (NSInteger) section
{
    if (section == 0) {
        return 1;
    }else if (section == 1) {
        return dataSource.count;
    }else{
        return 1;
    }
}

//每个分组上边预留的空白高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 20;
}
//每个分组下边预留的空白高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 2) {
        return 40;
    }
    return 20;
}
//每一个分组下对应的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 80;
    }
    return 40;
}

//设置每行对应的cell的展示内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    
    if (indexPath.section == 0) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"userinfo"];
        UIImageView *imageView=[[UIImageView alloc] initWithFrame:CGRectMake(12, 0 , 80, 80)];
        imageView.image = [UIImage imageNamed:@"usericon.png"];
        [cell.contentView addSubview:imageView];
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100 , 0 , 60, 80)];
        nameLabel.text = @"cherry";
        [cell.contentView addSubview:nameLabel];
    }else if (indexPath.section == 1) {
        cell.textLabel.text = [dataSource objectAtIndex:indexPath.row];
    }else{
        cell.textLabel.text = @"退出登陆";
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    return cell;
}




@end

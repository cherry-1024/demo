//
//  ViewController.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//
#import "CHYHomeViewController.h"
#import "CHYBookDetailViewController.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height


@interface CHYHomeViewController ()
@end

@implementation CHYHomeViewController

@synthesize array;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";//导航栏标题
    
    self.tableView = [[UITableView alloc]initWithFrame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style : UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];//把TableView添加到视图上
    
    array = [[NSArray alloc] initWithObjects:@"平凡的世界" , @"解忧杂货铺" , @"白夜行" , @"索罗斯传" , @"明朝那些事儿" , @"简爱", @"梦的解析" , @"设计心理学" , @"小王子" , @"目送" , @"雪国" , @"Facebook效应" , @"人间四月天" , @"传奇" , @"一个人的好心情" , nil];
    
    self.tableView.showsVerticalScrollIndicator = YES;
}

//显示tableView的章节数
-(NSInteger) numberOfSectionsInTableView : (UITableView*) tableView
{
    return 1;
}

//这个函数是指定显示多少cells
-(NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection : (NSInteger) section
{
    return [array count];//这个是指定加载数据的多少即显示多少个cell
}



-(UITableViewCell *) tableView : (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //定义个静态字符串为了防止与其他类的tableivew重复
    static NSString *CellIdentifier = @"Cell";
    //定义cell的复用性当处理大量数据时减少内存开销
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier : CellIdentifier];
    
    if (cell ==nil)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle : UITableViewCellStyleDefault reuseIdentifier: CellIdentifier];
    }
    
    cell.textLabel.text = [array objectAtIndex : [indexPath row]];  //通过 [indexPath row] 遍历数组


    return cell;
}

//跳转方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CHYBookDetailViewController *detailVC = [[CHYBookDetailViewController alloc] init];
    detailVC.titleStr = [array objectAtIndex:[indexPath row]];
    [self.navigationController pushViewController:detailVC animated:YES];




}

@end

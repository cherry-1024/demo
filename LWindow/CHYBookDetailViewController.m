//
//  SecondViewController.m
//  LWindow
//
//  Created by hongyu chen on 2017/5/26.
//  Copyright © 2017年  CSDC All rights reserved.
//
#import "CHYBookDetailViewController.h"

// 设备的宽高
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height



@interface CHYBookDetailViewController ()

@property (nonatomic, strong) UIButton *collectBtn;// 收藏按钮
@end

@implementation CHYBookDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"详情";//导航栏标题
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 90, SCREENWIDTH-24, 20)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = self.titleStr;
    titleLabel.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:titleLabel];
    
    //添加图片
    UIImage *image = [UIImage imageNamed:@"the ordinary world"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(10 , 120 , SCREENWIDTH - 30 , 200);
    [self.view addSubview:imageView];
    
    //添加文本
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.font = [UIFont systemFontOfSize:16];
    NSString *str = @"《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广阔背景下，通过复杂的矛盾纠葛，刻划社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。";
    textLabel.text = str;
    textLabel.numberOfLines = 0;
    [textLabel setLineBreakMode:NSLineBreakByWordWrapping];
    textLabel.frame = CGRectMake(10, 350, SCREENWIDTH , 180);
    textLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:textLabel];

    //定义收藏按钮
    self.collectBtn = [[UIButton alloc] initWithFrame:CGRectMake((SCREENWIDTH-100)/2, 540, 200, 50)];
    [self.collectBtn setTitle:@"收藏" forState:UIControlStateNormal];
    [self.collectBtn setTitleColor : [UIColor blueColor] forState : UIControlStateNormal];
    [self.collectBtn addTarget:self action:@selector(clikBtn) forControlEvents : UIControlEventTouchUpInside];
    [self.view addSubview:self.collectBtn];

}

- (void)clikBtn {
    [self.collectBtn setTitle:@"已收藏" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  AboutMeViewController.m
//  NoteBook
//
//  Created by 伏董 on 15/12/25.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "AboutMeViewController.h"
#import "AboutMeTableViewCell.h"
#define NavigationBarHight 64.0f

#define ImageHight 200.0f


@interface AboutMeViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) UIImageView *backImageView;

@property (nonatomic,strong) UIImageView *iconImageView;

@property (nonatomic,strong) UILabel *nameLabel;

@end

@implementation AboutMeViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createUI];
}

- (void)createUI{
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //设置contentinset
    self.tableView.contentInset = UIEdgeInsetsMake(ImageHight, 0, 0, 0);
    [self.view addSubview:self.tableView];
    
    
    self.backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -ImageHight, self.view.frame.size.width, ImageHight)];
    self.backImageView.image = imageRender(@"background");
    self.backImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.backImageView.autoresizesSubviews = YES;
    [self.tableView addSubview:self.backImageView];
    
}

#pragma mark -scrollview协议方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

    CGFloat y = scrollView.contentOffset.y;
    
    if (y < -ImageHight) {
        CGRect frame = _backImageView.frame;
        frame.origin.y = y;
        frame.size.height = -y;
        _backImageView.frame = frame;
    }

}

#pragma mark -tableview协议方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0f;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return section ==1 ? 1 : 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *cellID = @"cellID";
    
    AboutMeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"AboutMeTableViewCell" owner:self options:nil] lastObject];
    }

    cell.indexPath = indexPath;
        
    return cell;
}


@end

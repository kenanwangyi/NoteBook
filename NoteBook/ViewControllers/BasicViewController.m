//
//  BasicViewController.m
//  NoteBook
//
//  Created by 伏董 on 15/12/25.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()



@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.17f green:0.56f blue:0.34f alpha:1.00f];
    
    //设置navigation标题的颜色
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
}


@end

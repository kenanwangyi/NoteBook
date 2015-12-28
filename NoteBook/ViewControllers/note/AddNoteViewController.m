//
//  AddNoteViewController.m
//  NoteBook
//
//  Created by 伏董 on 15/12/27.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "AddNoteViewController.h"

@interface AddNoteViewController ()

@end

@implementation AddNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createNavigation];
}


#pragma mark -创建navigation
- (void)createNavigation{
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UIButton *finish = [UIButton buttonWithType:UIButtonTypeCustom];
    [finish setImage:[UIImage imageNamed:@"addfinish"] forState:UIControlStateNormal];
    finish.frame = CGRectMake(0, 0, 40, 40);
    [finish addTarget:self action:@selector(finishAdd) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *finishButton = [[UIBarButtonItem alloc] initWithCustomView:finish];
    self.navigationItem.rightBarButtonItem = finishButton;
}

- (void)finishAdd{
    

}


@end

//
//  NoteViewController.m
//  NoteBook
//
//  Created by 伏董 on 15/12/25.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "NoteViewController.h"
#import "AddNoteViewController.h"
@interface NoteViewController ()

@end

@implementation NoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createUI];
}

#pragma mark -创建界面
- (void)createUI{
    
    self.title = @"笔记";
    
    UIButton *calender = [UIButton buttonWithType:UIButtonTypeCustom];
    calender.frame = CGRectMake(0, 0, 40, 40);
    [calender setImage:imageRender(@"calender") forState:UIControlStateNormal];
    [calender addTarget:self action:@selector(calendarClicked) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *calenderButton = [[UIBarButtonItem alloc] initWithCustomView:calender];
    
    
    UIButton *search = [UIButton buttonWithType:UIButtonTypeCustom];
    search.frame = CGRectMake(0, 0, 40, 40);
    [search setImage:imageRender(@"search") forState:UIControlStateNormal];
    [search addTarget:self action:@selector(searchClicked) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithCustomView:search];
    
    UIButton *add = [UIButton buttonWithType:UIButtonTypeCustom];
    add.frame = CGRectMake(0, 0, 40, 40);
    [add setImage:imageRender(@"addnote") forState:UIControlStateNormal];
    [add addTarget:self action:@selector(addClicked) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithCustomView:add];
    
    self.navigationItem.leftBarButtonItems = @[calenderButton,searchButton];
    self.navigationItem.rightBarButtonItem = addButton;
}
#pragma mark -点击事件
- (void)calendarClicked{

}

- (void)searchClicked{
    
    
}

- (void)addClicked{
    
    AddNoteViewController *addNoteVC = [[AddNoteViewController alloc] init];
    addNoteVC.title = @"添加日记";
    
    [self.navigationController pushViewController:addNoteVC animated:YES];

}




@end

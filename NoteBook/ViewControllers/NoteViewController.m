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
    
    UIBarButtonItem *calenderButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"calender") withTarget:self action:@selector(calendarClicked)];

    UIBarButtonItem *searchButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"search") withTarget:self action:@selector(searchClicked)];

    UIBarButtonItem *addButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"addnote") withTarget:self action:@selector(addClicked)];
    
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
    
    addNoteVC.hidesBottomBarWhenPushed = YES;
    
    
    [self.navigationController pushViewController:addNoteVC animated:YES];
}




@end

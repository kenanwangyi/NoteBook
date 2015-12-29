//
//  AddNoteViewController.m
//  NoteBook
//
//  Created by 伏董 on 15/12/27.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "AddNoteViewController.h"

@interface AddNoteViewController ()<UITextViewDelegate>

@property (nonatomic,strong) UITextView *noteTextView;

@end

@implementation AddNoteViewController

- (void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    [self.navigationController setToolbarHidden:YES animated:YES];
}

- (void)dealloc{
    //销毁通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createNavigation];
    
    [self  createUI];
    
    //添加键盘出现和消失时的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

#pragma mark -创建UI
- (void)createUI{
    
    _noteTextView = [[UITextView alloc] initWithFrame:self.view.frame];
    _noteTextView.textColor = [UIColor redColor];
    _noteTextView.delegate = self;
    _noteTextView.keyboardType = UIKeyboardTypeDefault;
    _noteTextView.returnKeyType = UIReturnKeyDone;
    [self.view addSubview:_noteTextView];
    
}


#pragma mark -创建navigation
- (void)createNavigation{
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    UIBarButtonItem *finishButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"addfinish") withTarget:self action:@selector(finishAdd)];
    self.navigationItem.rightBarButtonItem = finishButton;
    
    
    [self.navigationController setToolbarHidden:NO animated:YES];
    
    UIBarButtonItem *fontButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"font") withTarget:self action:@selector(fontClicked)];
    UIBarButtonItem *backImageButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"backimage") withTarget:self action:@selector(backImageClicked)];
    UIBarButtonItem *photoButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"beijing") withTarget:self action:@selector(photoClicked)];
    UIBarButtonItem *videoButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"video") withTarget:self action:@selector(videoClicked)];
    UIBarButtonItem *retractButton = [ToolsView createButtonWithFrame:CGRectMake(0, 0, 40, 40) withImage:imageRender(@"retract") withTarget:self action:@selector(retractClicked)];
    UIBarButtonItem *flexButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    [self setToolbarItems:[NSArray arrayWithObjects:flexButton,fontButton,flexButton,backImageButton,flexButton,photoButton,flexButton,videoButton,flexButton,retractButton,flexButton, nil] animated:YES];
}
#pragma mark -完成添加日记的点击事件
- (void)finishAdd{
    

}

#pragma mark -设置字体大小的点击事件
- (void)fontClicked{


}

#pragma mark -设置背景图片的点击事件
- (void)backImageClicked{


}

#pragma mark -添加图片的点击事件
- (void)photoClicked{

}

#pragma mark -添加视频的点击事件
- (void)videoClicked{


}

#pragma mark -收起点击事件
- (void)retractClicked{
    
    [_noteTextView isFirstResponder] ? [_noteTextView resignFirstResponder] : [_noteTextView becomeFirstResponder];
}

#pragma mark -键盘升起时的事件
- (void)keyboardWillShow:(NSNotification *)noti{
    
    NSDictionary *userInfo = [noti userInfo];
    NSValue *Value = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [Value CGRectValue];
    int height = keyboardRect.size.height;
    
    [self.navigationController.toolbar setFrame:CGRectMake(0, self.navigationController.toolbar.frame.origin.y - height, self.navigationController.toolbar.frame.size.width, self.navigationController.toolbar.frame.size.height)];
}

#pragma mark -键盘降落时的事件
- (void)keyboardWillHide:(NSNotification *)noti{
    
    NSDictionary *userInfo = [noti userInfo];
    NSValue *Value = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [Value CGRectValue];
    int height = keyboardRect.size.height;
    
    [self.navigationController.toolbar setFrame:CGRectMake(0, self.navigationController.toolbar.frame.origin.y + height, self.navigationController.toolbar.frame.size.width, self.navigationController.toolbar.frame.size.height)];
}


@end

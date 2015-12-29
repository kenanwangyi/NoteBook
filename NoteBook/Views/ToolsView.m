//
//  ToolsView.m
//  NoteBook
//
//  Created by 伏董 on 15/12/29.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "ToolsView.h"

@implementation ToolsView

+ (UIBarButtonItem *)createButtonWithFrame:(CGRect)rect withImage:(UIImage *)image withTarget:(id)target action:(SEL)sel{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    button.frame = rect;
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    return barButton;
}

@end

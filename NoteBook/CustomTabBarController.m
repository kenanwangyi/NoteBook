//
//  CustomTabBarController.m
//  NoteBook
//
//  Created by 伏董 on 15/12/25.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "CustomTabBarController.h"
#import "NoteViewController.h"
#import "UsersViewController.h"
#import "AboutMeViewController.h"
@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *viewControllerArray = [[NSMutableArray alloc] init];
    
    NSArray *classArray = [NSArray arrayWithObjects:@"NoteViewController",@"UsersViewController",@"AboutMeViewController", nil];
    NSArray *titleArray = [NSArray arrayWithObjects:@"笔记",@"过客",@"我", nil];
    NSArray *imageArray = [NSArray arrayWithObjects:@"note",@"user",@"me", nil];
    NSArray *selectImageArray = [NSArray arrayWithObjects:@"note_select",@"user_select",@"me_select", nil];
    
    for (NSString *string in classArray) {
        
        Class className = NSClassFromString(string);
        BasicViewController *vc = [[className alloc] init];
        UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
        [viewControllerArray addObject:nvc];
    }
    
    self.viewControllers = viewControllerArray;
    self.tabBar.tintColor = [UIColor colorWithRed:0.17f green:0.56f blue:0.34f alpha:1.00f];
    for (int i = 0; i < viewControllerArray.count; i++) {
        self.viewControllers[i].tabBarItem.title = titleArray[i];

        self.viewControllers[i].tabBarItem.image = [[UIImage imageNamed:imageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.viewControllers[i].tabBarItem.selectedImage = [[UIImage imageNamed:selectImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  AboutMeTableViewCell.h
//  NoteBook
//
//  Created by 伏董 on 15/12/26.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutMeTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (nonatomic,strong) NSIndexPath *indexPath;

@end

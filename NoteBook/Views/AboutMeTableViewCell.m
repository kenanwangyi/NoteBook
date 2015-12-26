//
//  AboutMeTableViewCell.m
//  NoteBook
//
//  Created by 伏董 on 15/12/26.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "AboutMeTableViewCell.h"

@implementation AboutMeTableViewCell

- (void)awakeFromNib {
    // Initialization code
}


- (void)setIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.section) {
        case 0:
        {
            switch (indexPath.row) {
                case 0:
                    _nameLabel.text = @"资料修改";
                    break;
                case 1:
                    _nameLabel.text = @"账号安全";
                    break;
                case 2:
                    _nameLabel.text = @"隐私";
                default:
                    break;
            }
            
        }
            break;
            
        case 1:
            _nameLabel.text = @"系统通知";
            break;
            
        case 2:
        {
            switch (indexPath.row) {
                case 0:
                    _nameLabel.text = @"意见反馈";
                    break;
                case 1:
                    _nameLabel.text = @"好评鼓励";
                    break;
                case 2:
                    _nameLabel.text = @"关于吾记";
                default:
                    break;
            }
            
        }
            break;
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

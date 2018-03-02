//
//  GoodTableViewCell.m
//  AutoFixCell
//
//  Created by Yang Blus on 2018/3/2.
//  Copyright © 2018年 Yang Blus. All rights reserved.
//

#import "GoodTableViewCell.h"

@implementation GoodTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
}

- (void)setCellModel:(CellModel *)cellModel
{
    _cellModel = cellModel;
    self.desLable.text = cellModel.desStr;
    self.titleLable.text = cellModel.titleStr;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

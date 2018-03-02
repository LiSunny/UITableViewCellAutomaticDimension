//
//  GoodTableViewCell.h
//  AutoFixCell
//
//  Created by Yang Blus on 2018/3/2.
//  Copyright © 2018年 Yang Blus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellModel.h"


@interface GoodTableViewCell : UITableViewCell

@property (nonatomic, strong) CellModel * cellModel;

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UILabel *desLable;
@property (weak, nonatomic) IBOutlet UIView *saveView;
@property (weak, nonatomic) IBOutlet UIView *zanView;

@end

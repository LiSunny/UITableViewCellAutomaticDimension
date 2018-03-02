//
//  ViewController.m
//  AutoFixCell
//
//  Created by Yang Blus on 2018/3/2.
//  Copyright © 2018年 Yang Blus. All rights reserved.
//

#import "ViewController.h"
#import "GoodTableViewCell.h"
#import "CellModel.h"


static NSString * cellIden = @"GoodTableViewCell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *listTableView;

@property (nonatomic, strong) NSMutableArray * dataArray;

@end

@implementation ViewController

- (NSMutableArray *)dataArray
{
    if (!_dataArray)
    {
        _dataArray = [NSMutableArray array];
        
        NSString *string = @"Siri 让你能够利用语音来完成发送信息、安排会议、查看最新比分等更多事务。只要说出你想做的事，Siri 就能帮你办到。Siri 可以听懂你说的话、知晓你的心意，甚至还能有所回应。iOS 7 中的 Siri 拥有新外观、新声音和新功能。它的界面经过重新设计，以淡入视图浮现于任意屏幕画面的最上层。Siri 回答问题的速度更快，还能查询更多信息源，如维基百科。它可以承担更多任务，如回电话、播放语音邮件、调节屏幕亮度，以及更多。";
        
        
        
        //生成假数据
        for (int i = 0; i < 100; i++)
        {
            CellModel *model = [[CellModel alloc] init];
            NSInteger index = (arc4random()%(string.length / 20)) * 20;
            model.titleStr = [string substringToIndex:MAX(20, index)];
            model.desStr = [string substringToIndex:MAX(20, index)];
            
            [_dataArray addObject:model];
        }
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.listTableView.delegate = self;
    self.listTableView.dataSource = self;
    
    [self.listTableView registerNib:[UINib nibWithNibName:NSStringFromClass([GoodTableViewCell class]) bundle:nil] forCellReuseIdentifier:cellIden];
    
}


#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}


#pragma mark UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GoodTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIden forIndexPath:indexPath];
    cell.cellModel = self.dataArray[indexPath.row];
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

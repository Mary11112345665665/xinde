//
//  ViewController.m
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import "ViewController.h"
#import "QiuModel.h"
#import "HappyCell.h"
#import "happyCellFrameModel.h"
#import <AFNetworking/AFNetworking.h>

#define QSBKURL @"http://m2.qiushibaike.com/article/list/latest?count=20&page=1"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,HapplyCellDelegate>{
    UITableView *_tableView;
    NSMutableArray *_dataArray;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dataArray = [NSMutableArray new];
    [self createTableView];
    [self loadDataFromNet];
}

- (void)createTableView{
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
    
}

- (void)loadDataFromNet{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:QSBKURL parameters:self success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        QiuModel *model = [[QiuModel alloc]initWithData:responseObject error:nil];
       // _dataArray = model.items;
        
        for (ItemModel *itemModel in model.items) {
            happyModel1 *model = [happyModel1 new];
            
            
            model.iconUrl = itemModel.userIcon;
            
            
            
            model.loginName = itemModel.userLogin;
            model.content = itemModel.content;
            model.largeUrl = itemModel.image;
            
            happyCellFrameModel *cellFrame = [happyCellFrameModel new];
            cellFrame.model = model;
            [_dataArray addObject:cellFrame];
            
        }
        
        [_tableView reloadData];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        
        
    }];
}

#pragma mark- UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
        return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    HappyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    
    
    if (cell == nil) {
        cell = [[HappyCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
        cell.delegate = self;//自定义代理HapplyCellDelegate

    }
    cell.cellFrame = _dataArray[indexPath.row];
    return cell;
    
    
}
#pragma 实现自定义协议
- (void)upAction:(HappyCell *)cell sender:(id)sender{
    
    //单元格cell是复用的所以不能用tag值
    NSIndexPath *indexPath = [_tableView indexPathForCell:cell];
    NSLog(@"你点了第几行：%ld",indexPath.row);
    
    
    // 不知道cell的情况下，取出cell
    UITableViewCell *cell1 = (UITableViewCell *)[[sender superview] superview];
    NSIndexPath *indexpath1 = [_tableView indexPathForCell:cell1];
    NSLog(@"%@",[cell1 class]);
    NSLog(@"cell1-----%ld",indexpath1.row);
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    happyCellFrameModel *cellFrame = _dataArray[indexPath.row];
    return cellFrame.cellHeight;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

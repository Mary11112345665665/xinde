//
//  HappyCell.h
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "happyCellFrameModel.h"

@class HappyCell;//不写方法会报错- (void)upAction:(HappyCell *)cell sender:(id)sender;

@protocol HapplyCellDelegate <NSObject>

- (void)upAction:(HappyCell *)cell sender:(id)sender;

@end

@interface HappyCell : UITableViewCell
@property (nonatomic, strong) happyCellFrameModel *cellFrame;


//代理
@property (nonatomic, weak) id<HapplyCellDelegate >delegate;

@end

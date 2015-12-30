//
//  happyCellFrameModel.h
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "happyModel1.h"
#import <UIKit/UIKit.h>
#define CONTENTFONT [UIFont systemFontOfSize:20]




@interface happyCellFrameModel : NSObject


@property (nonatomic, assign,readonly)CGRect iconFrame;// readonly只读，围边不能改


@property (nonatomic, assign,readonly)CGRect nameFrame;
@property (nonatomic, assign,readonly)CGRect contentFrame;
@property (nonatomic, assign,readonly)CGRect largeFrame;
@property (nonatomic, assign,readonly)CGRect buttonFrame;
@property (nonatomic, assign,readonly)CGFloat cellHeight;



@property (nonatomic, strong)happyModel1 *model;

@end

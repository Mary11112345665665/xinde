//
//  happyCellFrameModel.m
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import "happyCellFrameModel.h"

@implementation happyCellFrameModel


// 重写set方法 @property (nonatomic, strong)happyModel1 *model;
- (void)setModel:(happyModel1 *)model{
    // 自带set方法
    _model = model;// 每传进一个计算一个frame
    
    
    // 用代码，该其中参数，整体布局不会乱
    CGFloat leftPadding = 20.0;// 左边间距距离
    CGFloat rightPadding = 20.0;// 右边间距距离
    CGFloat topPadding = 10.0;
     CGFloat padding = 10.0;

    CGFloat width = CGRectGetWidth([[UIScreen mainScreen] bounds]);
    
    _iconFrame = CGRectMake(leftPadding, topPadding, 46, 46);
    _nameFrame = CGRectMake(CGRectGetMaxX(_iconFrame)+padding, topPadding, width - CGRectGetMaxX(_iconFrame)-padding-rightPadding, 46);
    
    //
    CGFloat contentHeight = [self sizeWithText:model.content maxSize:CGSizeMake(width-leftPadding-rightPadding, MAXFLOAT) fontSize:CONTENTFONT].height;
    _contentFrame = CGRectMake(leftPadding, CGRectGetMaxY(_iconFrame)+padding, width-leftPadding-rightPadding, contentHeight);
    
    
    if (model.largeUrl) {
        _largeFrame = CGRectMake(leftPadding, CGRectGetMaxY(_contentFrame)+padding, 100, 100);
        _buttonFrame = CGRectMake(leftPadding, CGRectGetMaxY(_largeFrame)+padding, 60, 30);
        
    }
    else{
        _largeFrame = CGRectZero;
        _buttonFrame = CGRectMake(leftPadding, CGRectGetMaxY(_contentFrame)+padding, 60, 30);
       // _cellHeight = CGRectGetMaxY(_contentFrame)+padding;
    }
    _cellHeight = CGRectGetMaxY(_buttonFrame)+padding;

}

//计算文字高度
- (CGSize)sizeWithText:(NSString *)text maxSize:(CGSize)maxSize fontSize:(UIFont *)font{
    
    // 边界随着size 变化
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
}
@end

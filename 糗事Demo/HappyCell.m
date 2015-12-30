//
//  HappyCell.m
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import "HappyCell.h"

@implementation HappyCell{
    
    UIImageView *_iconImageView;
    UILabel *_nameLabel;
    UILabel *_contentLabel;
    UIImageView *_largeImageView;
    UIButton *_upButton;
    
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        [self customViews];
    }
    return self;
}


- (void)customViews{
    
    
    _iconImageView  = [UIImageView new];
    _iconImageView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:_iconImageView];
    
    _nameLabel = [UILabel new];
     [self.contentView addSubview:_nameLabel];
    
    _contentLabel = [UILabel new];
    _contentLabel.numberOfLines = 0;// 内容不限制行数
    _contentLabel.font = CONTENTFONT;
     [self.contentView addSubview:_contentLabel];
    
    _largeImageView = [UIImageView new];
    _largeImageView.backgroundColor = [UIColor redColor];
     [self.contentView addSubview:_largeImageView];
    
    _upButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [_upButton setImage:[UIImage imageNamed:@"icon_for_good"] forState:UIControlStateNormal];
    [_upButton addTarget:self action:@selector(upButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_upButton];
    
    
}

- (void)upButtonAction:(UIButton *)upButton{
    
    NSLog(@"%s",__func__);
    
    // 判断代理是否响应这个方法，不写如果没响应就会崩溃
    if (_delegate && [_delegate respondsToSelector:@selector(upAction:sender:)]) {
        
        [_delegate upAction:self sender:upButton];
    }
    
}
// set方法
- (void)setCellFrame:(happyCellFrameModel *)cellFrame{
    
    _cellFrame = cellFrame;// 一定要记得初始化
    
    _iconImageView.frame = cellFrame.iconFrame;
    
    
    // cellFramed调用happyCellModel里的属性model，而model是HappyModel1类型，所以调回HappyModel1里的loginName
    _nameLabel.text = cellFrame.model.loginName;
    _nameLabel.frame = cellFrame.nameFrame;
    
    
    _contentLabel.text = cellFrame.model.content;
    _contentLabel.frame = cellFrame.contentFrame;
    
    _largeImageView.frame = cellFrame.largeFrame;
    
    _upButton.frame = cellFrame.buttonFrame;
}



// 拉xib 时
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

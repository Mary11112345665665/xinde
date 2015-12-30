//
//  happyModel1.h
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import <Foundation/Foundation.h>


// 把需要的几项单独写出来

@interface happyModel1 : NSObject
@property (nonatomic, copy)NSString *iconUrl;
@property (nonatomic, copy)NSString *loginName;
@property (nonatomic, copy)NSString *content;

//@property (nonatomic, assign)BOOL *isHaveImage;
@property (nonatomic, copy)NSString *largeUrl;

@end

//
//  QiuModel.m
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import "QiuModel.h"

@implementation ImageSizeModel



@end


@implementation ItemModel


+ (JSONKeyMapper *)keyMapper {
    
    return [[JSONKeyMapper alloc] initWithDictionary:@{@"id":@"itemID",@"votes.down":@"votesDown",@"votes.up":@"votesUp",@"user.avatar_updated_at":@"userAvatar",@"user.last_visited_at":@"userLastV",@"user.created_at":@"userCreated",@"user.state":@"userState",@"user.email":@"userEmail",@"user.last_device":@"userLastD",@"user.role":@"userRole",@"user.login":@"userLogin",@"user.id":@"userID",@"user.icon":@"userIcon"}];
    
}

@end

@implementation QiuModel

@end



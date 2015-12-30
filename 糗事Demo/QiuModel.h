//
//  QiuModel.h
//  糗事Demo
//
//  Created by qianfeng007 on 15/12/3.
//  Copyright © 2015年 杨明辉. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface ImageSizeModel : JSONModel
@property (nonatomic, strong) NSArray *s;
@property (nonatomic, strong) NSArray *m;

@end

@protocol ItemModel


@end


@interface ItemModel : JSONModel

@property (nonatomic, copy) NSString<Optional> *format;
@property (nonatomic, copy) NSString<Optional> *image;
@property (nonatomic, copy) NSString<Optional> *published_at;
@property (nonatomic, copy) NSString<Optional> *tag;
@property (nonatomic, copy) NSString<Optional> *userAvatar;
@property (nonatomic, copy) NSString<Optional> *userLastV;
@property (nonatomic, copy) NSString<Optional> *userCreated;
@property (nonatomic, copy) NSString<Optional> *userState;
@property (nonatomic, copy) NSString<Optional> *userEmail;
@property (nonatomic, copy) NSString<Optional> *userLastD;
@property (nonatomic, copy) NSString<Optional> *userRole;
@property (nonatomic, copy) NSString<Optional> *userLogin;
@property (nonatomic, copy) NSString<Optional> *userID;
@property (nonatomic, copy) NSString<Optional> *userIcon;
@property (nonatomic, strong) ImageSizeModel<Optional> *image_size;

@property (nonatomic, copy) NSString<Optional> *itemID;
@property (nonatomic, copy) NSString<Optional> *votesDown;
@property (nonatomic, copy) NSString<Optional> *votesUp;
@property (nonatomic, copy) NSString<Optional> *created_at;
@property (nonatomic, copy) NSString<Optional> *content;
@property (nonatomic, copy) NSString<Optional> *state;
@property (nonatomic, copy) NSString<Optional> *comments_count;
@property (nonatomic, copy) NSString<Optional> *allow_comment;
@property (nonatomic, copy) NSString<Optional> *share_count;
@property (nonatomic, copy) NSString<Optional> *type;


@end

@interface QiuModel : JSONModel

@property (nonatomic, copy) NSString *count;
@property (nonatomic, copy) NSString<Optional> *err;
@property (nonatomic, copy) NSString *total;
@property (nonatomic, copy) NSString *page;
@property (nonatomic, copy) NSString<Optional> *refresh;
@property (nonatomic, copy) NSMutableArray<ItemModel> *items;
@end


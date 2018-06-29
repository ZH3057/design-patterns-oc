//
//  Request.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Request.h"

@interface Request ()

@property (nonatomic, strong) Level *level;

@end


@implementation Request

- (instancetype)initWithLevelNum:(NSInteger)levelNum {
    if (self = [super init]) {
        _level = [[Level alloc] init];
        _level.levelNum = levelNum;
    }
    return self;
}

- (Level *)getRequestLevel {
    return self.level;
}

@end

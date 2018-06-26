//
//  Sun.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/26.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Sun.h"

@implementation Sun

static Sun *_instance;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}

@end

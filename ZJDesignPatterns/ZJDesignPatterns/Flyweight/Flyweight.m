//
//  Flyweight.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Flyweight.h"

@interface Flyweight ()

/** 内部状态 */
@property (nonatomic, copy) NSString *intrinsic;


/** 外部装状态 */
@property (nonatomic, copy, readonly) NSString *extrinsic;

@end


@implementation Flyweight

- (instancetype)initWithExtrinsic:(NSString *)extrinsic {
    if (self = [super init]) {
        _extrinsic = extrinsic;
    }
    return self;
}

@end

//
//  Invoker.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong) Command *commod;

@end


@implementation Invoker

- (instancetype)initWithCommond:(Command *)commond {
    if (self = [super init]) {
        _commod = commond;
    }
    return self;
}

- (void)action {
    [self.commod execute];
}

@end

//
//  Context.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Context.h"

@interface Context ()

@property (nonatomic, strong) ConcreteStrategy *strategy;

@end


@implementation Context

- (instancetype)initWithConcreteStrategy:(ConcreteStrategy *)strategy {
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

- (void)doAnythinig {
    [self.strategy doSomething];
}

@end

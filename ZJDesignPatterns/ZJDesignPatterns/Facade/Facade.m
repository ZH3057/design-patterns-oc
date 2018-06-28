//
//  Facade.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Facade.h"

@interface Facade ()

@property (nonatomic, strong) ModuleA *a;
@property (nonatomic, strong) ModuleB *b;

@end


@implementation Facade

- (instancetype)init {
    self = [super init];
    if (self) {
        _a = [[ModuleA alloc] init];
        _b = [[ModuleB alloc] init];
    }
    return self;
}

- (void)moduleAOperate {
    [self.a moduleAOperate];
}
- (void)moduleBOperate {
    [self.b moduleBOperate];
}

@end

//
//  Adapter.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Adapter.h"

@interface Adapter ()

@property (nonatomic, strong) Adaptee *ad;

@end


@implementation Adapter

- (instancetype)init {
    self = [super init];
    if (self) {
        _ad = [[Adaptee alloc] init];
    }
    return self;
}

- (void)doAdapteeThings {
    [super doTargetThings];
    
    [self.ad doAdapteeThings];
}

@end

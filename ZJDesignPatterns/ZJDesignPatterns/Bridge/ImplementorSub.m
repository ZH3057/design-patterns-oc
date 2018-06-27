//
//  ImplementorSub.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "ImplementorSub.h"

@implementation ImplementorSub

- (void)doSomething {
    NSLog(@"%@ do something", [self class]);
}

- (void)doAnything {
    NSLog(@"%@ do anything", [self class]);
}

@end

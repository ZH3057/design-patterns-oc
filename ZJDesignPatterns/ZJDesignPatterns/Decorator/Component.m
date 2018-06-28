//
//  Component.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Component.h"

@implementation Component

- (void)operate {
    NSLog(@"Component operated.");
    if (self.decorator && [self.decorator respondsToSelector:@selector(decorateMethod1:)]) {
        [self.decorator decorateMethod1:self];
    }
    
    if (self.decorator && [self.decorator respondsToSelector:@selector(decorateMethod2:)]) {
        [self.decorator decorateMethod2:self];
    }
}

@end

//
//  Decorator.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void)decorateMethod1:(Component *)component {
    NSLog(@"Decorator decorateMethod1");
}

- (void)decorateMethod2:(Component *)component {
    NSLog(@"Decorator decorateMethod2");
}

@end

//
//  Adapter.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

- (void)doAdapteeThings {
    [super doTargetThings];
    
    Adaptee *ad = [[Adaptee alloc] init];
    [ad doAdapteeThings];
}

@end

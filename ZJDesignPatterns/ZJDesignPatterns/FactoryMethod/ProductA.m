//
//  ProductA.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "ProductA.h"

@implementation ProductA

- (NSString *)description {
    return [NSString stringWithFormat:@"I'm product A, class: %@", [self class]];
}

@end

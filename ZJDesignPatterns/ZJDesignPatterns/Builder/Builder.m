//
//  Builder.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Builder.h"
#import "Goods.h"

@implementation Builder

- (Goods *)buildGoods {
    NSLog(@"Goods build.");
    return [[Goods alloc] init];
}

- (void)setPart {
    NSLog(@"Goods set part.");
}

@end

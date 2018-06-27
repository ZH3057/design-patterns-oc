//
//  Director.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Director.h"

@implementation Director

- (void)createGoods {
    [self.builder buildGoods];
    [self.builder setPart];
}

@end

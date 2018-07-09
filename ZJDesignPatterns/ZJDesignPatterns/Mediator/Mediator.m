//
//  Mediator.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Mediator.h"

@interface Mediator ()


@end


@implementation Mediator


- (void)purchase {
    [self.manager selfMethod];
}

- (void)sale {
    [self.colleague selfMethod];
}

@end

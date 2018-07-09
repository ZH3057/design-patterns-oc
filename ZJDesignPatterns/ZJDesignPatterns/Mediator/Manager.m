//
//  Manager.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Manager.h"
#import "Mediator.h"

@interface Manager ()

@property (nonatomic, strong) Mediator *mediator;

@end


@implementation Manager

- (instancetype)initWithMediator:(Mediator *)mediator {
    if (self = [super init]) {
        _mediator = mediator;
    }
    return self;
}

- (void)selfMethod {
    NSLog(@"Manager do self thing");
}

- (void)depMethod {
    NSLog(@"Manager need mediator doing thing");
    [self.mediator sale];
}

@end

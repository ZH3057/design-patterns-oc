//
//  Colleague.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Colleague.h"
#import "Mediator.h"

@interface Colleague ()

@property (nonatomic, strong) Mediator *mediator;

@end


@implementation Colleague

- (instancetype)initWithMediator:(Mediator *)mediator {
    if (self = [super init]) {
        _mediator = mediator;
    }
    return self;
}

- (void)selfMethod {
    NSLog(@"Colleague do self thing");
}

- (void)depMethod {
    NSLog(@"Colleague need mediator doing thing");
    [self.mediator purchase];
}

@end

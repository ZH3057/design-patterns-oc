//
//  Command.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Command.h"

@interface Command ()

@property (nonatomic, strong) Receiver *receiver;

@end


@implementation Command

- (instancetype)initWithReceiver:(Receiver *)receiver {
    if (self = [super init]) {
        _receiver = receiver;
    }
    return self;
}

- (void)execute {
    [self.receiver doSomething];
}

@end

//
//  ObserverCenter.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "ObserverCenter.h"

@interface ObserverCenter ()

@property (nonatomic, strong) NSMutableArray<Observer *> *observerPool;

@end


@implementation ObserverCenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _observerPool = [[NSMutableArray<Observer *> alloc] init];
    }
    return self;
}

- (void)addObserver:(Observer *)observer {
    if (!observer) return;
    [self.observerPool addObject:observer];
}

- (void)removeObserver:(Observer *)observer {
    if (!observer) return;
    [self.observerPool removeObject:observer];
}

- (void)notifyObservers {
    for (Observer *o in self.observerPool) {
        [o update];
    }
}

@end

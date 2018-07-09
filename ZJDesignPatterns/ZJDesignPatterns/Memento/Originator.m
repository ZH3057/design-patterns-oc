//
//  Originator.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Originator.h"

@interface Originator ()

@property (nonatomic, assign) NSInteger state;

@end


@implementation Originator

- (void)set_state:(NSInteger)state {
    self.state = state;
}

- (NSInteger)get_state {
    return self.state;
}

- (Memento *)createMemento {
    Memento *m = [[Memento alloc] init];
    [m set_state:self.state];
    return m;
}

- (void)restoreMemento:(Memento *)memento {
    self.state =  [memento get_state];
}

@end

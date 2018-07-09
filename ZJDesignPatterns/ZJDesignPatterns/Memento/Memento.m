//
//  Memento.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Memento.h"

@interface Memento ()

@property (nonatomic, assign) NSInteger state;

@end


@implementation Memento

- (void)set_state:(NSInteger)state {
    self.state = state;
}

- (NSInteger)get_state {
    return self.state;
}

@end

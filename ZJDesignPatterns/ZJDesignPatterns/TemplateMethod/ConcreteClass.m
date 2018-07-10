//
//  ConcreteClass.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/10.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "ConcreteClass.h"

@implementation ConcreteClass

- (void)doSomething {
    NSLog(@"ConcreteClass do something.");
}

- (void)doAnything {
    NSLog(@"ConcreteClass do anything.");
}

- (void)templateMethod {
    [self doSomething];
    [self doAnything];
}

@end

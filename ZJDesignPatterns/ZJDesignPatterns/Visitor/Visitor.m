//
//  Visitor.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Visitor.h"
#import "Element.h"

@interface Visitor ()

@end


@implementation Visitor

- (void)visit:(Element *)element {
    [element doSomething];
}

@end

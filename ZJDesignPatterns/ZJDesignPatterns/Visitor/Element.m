//
//  Element.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Element.h"
#import "Visitor.h"

@interface Element ()

@end


@implementation Element

- (void)doSomething {
    NSLog(@"Element do something.");
}

- (void)accept:(Visitor *)visitor {
    [visitor visit:self];
}

@end

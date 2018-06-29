//
//  Proxy.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Proxy.h"

@implementation Proxy

- (void)requestBefore {
    NSLog(@"Do action before request.");
}

- (void)requestAfter {
    NSLog(@"Do action after request.");
}

@end

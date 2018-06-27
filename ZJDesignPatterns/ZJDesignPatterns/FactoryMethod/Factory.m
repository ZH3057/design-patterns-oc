//
//  Factory.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Factory.h"
#import "Product.h"

@implementation Factory

+ (Product *)createProduct {
    return [[Product alloc] init];
}

@end

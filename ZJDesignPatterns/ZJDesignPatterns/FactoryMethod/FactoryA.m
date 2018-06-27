//
//  FactoryA.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "FactoryA.h"
#import "ProductA.h"

@implementation FactoryA

+ (Product *)createProduct {
    return [[ProductA alloc] init];
}

@end

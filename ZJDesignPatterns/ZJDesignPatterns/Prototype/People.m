//
//  People.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/26.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "People.h"

@implementation People

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(SexType)sex {
    if (self = [super init]) {
        _name = name;
        _age = age;
        _sex = sex;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    People *p = [[People allocWithZone:zone] init];
    p.name = [self.name copy];
    p.age = self.age;
    p.sex = self.sex;
    return p;
}

@end

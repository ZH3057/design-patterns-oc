//
//  FlyweightFactory.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "FlyweightFactory.h"

@interface FlyweightFactory ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, Flyweight *> *pool;

@end


@implementation FlyweightFactory

- (instancetype)init {
    self = [super init];
    if (self) {
        _pool = [[NSMutableDictionary<NSString *, Flyweight *> alloc] init];
    }
    return self;
}

- (Flyweight *)getFlyweightWithExtrinsic:(NSString *)extrinsic {
    
    if (!extrinsic || ![extrinsic isKindOfClass:[NSString class]]) {
        NSLog(@"Please input right extrinsic.");
        return nil;
    }
    
    Flyweight *f = [self.pool objectForKey:extrinsic];
    if (!f) {
        f = [[Flyweight alloc] initWithExtrinsic:extrinsic];
        [self.pool setObject:f forKey:extrinsic];
    }
    return f;
}

@end

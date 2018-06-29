//
//  FlyweightFactory.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flyweight.h"

@interface FlyweightFactory : NSObject

- (Flyweight *)getFlyweightWithExtrinsic:(NSString *)extrinsic;

@end

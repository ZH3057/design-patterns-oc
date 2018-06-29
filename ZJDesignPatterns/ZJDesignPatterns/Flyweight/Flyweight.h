//
//  Flyweight.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Flyweight : NSObject


/**
 init
 @param extrinsic 外部状态
 */
- (instancetype)initWithExtrinsic:(NSString *)extrinsic;

@end

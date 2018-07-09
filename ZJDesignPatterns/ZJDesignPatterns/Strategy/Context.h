//
//  Context.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ConcreteStrategy.h"

@interface Context : NSObject

- (instancetype)initWithConcreteStrategy:(ConcreteStrategy *)strategy;

- (void)doAnythinig;

@end

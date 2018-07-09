//
//  Colleague.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;

@interface Colleague : NSObject

- (instancetype)initWithMediator:(Mediator *)mediator;

- (void)selfMethod;

- (void)depMethod;

@end

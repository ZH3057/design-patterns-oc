//
//  Mediator.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colleague.h"
#import "Manager.h"

@interface Mediator : NSObject

@property (nonatomic, weak) Colleague *colleague;

@property (nonatomic, weak) Manager *manager;

- (void)purchase;

- (void)sale;

@end

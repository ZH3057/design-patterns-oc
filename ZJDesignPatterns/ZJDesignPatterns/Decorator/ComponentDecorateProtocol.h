//
//  ComponentDecorateProtocol.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Component;

@protocol ComponentDecorateProtocolDelegate <NSObject>

@optional

- (void)decorateMethod1:(Component *)component;

- (void)decorateMethod2:(Component *)component;

@required

@end

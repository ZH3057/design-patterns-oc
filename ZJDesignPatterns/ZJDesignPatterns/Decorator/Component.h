//
//  Component.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentDecorateProtocol.h"

@interface Component : NSObject

@property (nonatomic, weak) id<ComponentDecorateProtocolDelegate> decorator;

- (void)operate;

@end

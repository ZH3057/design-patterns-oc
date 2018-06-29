//
//  Handler.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Request.h"
#import "Response.h"
#import "Level.h"

@interface Handler : NSObject

- (instancetype)initWithLevelNum:(NSInteger)levelNum;

- (Response *)handleMessage:(Request *)request;

- (Level *)getHandlerLevel;

- (void)setNext:(Handler *)handler;

@end

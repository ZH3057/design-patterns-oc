//
//  Handler.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Handler.h"

@interface Handler ()

@property (nonatomic, strong) Handler *nextHandler;
@property (nonatomic, strong) Level *level;

@end


@implementation Handler

- (instancetype)initWithLevelNum:(NSInteger)levelNum {
    if (self = [super init]) {
        _level = [[Level alloc] init];
        _level.levelNum = levelNum;
    }
    return self;
}

- (Response *)handleMessage:(Request *)request {
    
    Response *response = nil;
    if (self.getHandlerLevel.levelNum == request.getRequestLevel.levelNum) {
        NSLog(@"levelNum: %zd", self.getHandlerLevel.levelNum);
        response = [self echo:request];
    } else if (self.nextHandler) {
        [self.nextHandler handleMessage:request];
    } else {
        NSLog(@"NO handler handle request.");
    }
    
    return response;
}

- (Response *)echo:(Request *)request {
    NSLog(@"Request handled.");
    return nil;
}

- (Level *)getHandlerLevel {
    return self.level;
}

- (void)setNext:(Handler *)handler {
    self.nextHandler = handler;
}

@end

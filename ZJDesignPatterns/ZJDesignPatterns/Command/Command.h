//
//  Command.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

@interface Command : NSObject

- (instancetype)initWithReceiver:(Receiver *)receiver;

- (void)execute;

@end

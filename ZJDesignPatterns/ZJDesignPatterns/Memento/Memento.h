//
//  Memento.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 负责存储Originator发起人对象的内部状态
 在需要的时候提供发起人需要的内部状态
 */
@interface Memento : NSObject

- (void)set_state:(NSInteger)state;

- (NSInteger)get_state;

@end

//
//  Originator.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Memento.h"
#import "Caretaker.h"


/**
 记录当前时刻的内部状态，负责定义哪些属于备份范围的状态
 负责创建和恢复备忘录数据
 */
@interface Originator : NSObject

- (void)set_state:(NSInteger)state;

- (NSInteger)get_state;

- (Memento *)createMemento;

- (void)restoreMemento:(Memento *)memento;

@end

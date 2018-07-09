//
//  Caretaker.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"


/**
 备忘录管理员角色
 */
@interface Caretaker : NSObject

@property (nonatomic, strong) Memento *memento;

@end

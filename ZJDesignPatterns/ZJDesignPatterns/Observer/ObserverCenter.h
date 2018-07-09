//
//  ObserverCenter.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

@interface ObserverCenter : NSObject

- (void)addObserver:(Observer *)observer;

- (void)removeObserver:(Observer *)observer;

- (void)notifyObservers;

@end

//
//  ConcreteClass.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/10.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractClassProtocol.h"

@interface ConcreteClass : NSObject <AbstractClassProtocol>

- (void)templateMethod;

@end

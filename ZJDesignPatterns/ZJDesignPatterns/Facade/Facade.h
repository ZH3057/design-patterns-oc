//
//  Facade.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModuleA.h"
#import "ModuleB.h"

@interface Facade : NSObject

- (void)moduleAOperate;
- (void)moduleBOperate;

@end

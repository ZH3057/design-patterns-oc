//
//  Element.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Visitor;


/**
 声明接受哪一类访问者访问，程序上是通过accept方法中的参数来定义的
 */
@interface Element : NSObject

- (void)doSomething;

- (void)accept:(Visitor *)visitor;

@end

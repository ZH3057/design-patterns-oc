//
//  Visitor.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/7/9.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Element;


/**
 声明访问者可以访问哪些元素，具体到程序中就是visit方法的参数定义哪些对象是可以被访问的
 */
@interface Visitor : NSObject

- (void)visit:(Element *)element;

@end

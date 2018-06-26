//
//  main.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/26.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "People.h"
#import "Sun.h"

void peopleInit(void);
void sunInit (void);

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 原型模式
        peopleInit();
        
        // 单例模式
        sunInit();
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}



/**
 原型模式
 通过克隆已有的对象来创建新的对象，已有的对象称为原型
 */
void peopleInit(void) {
    
    People *p1 = [[People alloc] initWithName:@"A" age:12 sex:SexType_male];
    People *p2 = [p1 copy];
    NSLog(@"p1: %@", p1);
    NSLog(@"p2: %@", p2);
    
}


/**
 单例模式
 能够确保某个类在应用中只存在一个实例，创建之后会向整个系统共用这个实例
 */
void sunInit (void) {
    Sun *s = [Sun shareInstance];
    Sun *s1 = [s copy];
    Sun *s2 = [s mutableCopy];
    Sun *s3 = [s1 copy];
    NSLog(@"s: %p, s1: %p, s2: %p, s3: %p", s, s1, s2, s3);
}














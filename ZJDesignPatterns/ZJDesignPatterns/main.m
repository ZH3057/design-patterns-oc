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
#import "FactoryMethod.h"
#import "BuilderHeader.h"
#import "Adapter.h"
#import "ImplementorSub.h"
#import "Decorator.h"
#import "CompositeHeader.h"

void peopleInit(void);
void sunInit (void);
void factoryMethod (void);
void builderInit (void);
void adapterInit(void);
void bridgeInit(void);
void decoratorInit(void);
void compositeInit (void);

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // 原型模式
        peopleInit();
        
        // 单例模式
        sunInit();
        
        // 工厂方法
        factoryMethod();
        
        // 建造者模式
        builderInit();
        
        // 适配器模式
        adapterInit();
        
        // 桥接模式
        bridgeInit();
        
        // 装饰器模式
        decoratorInit();
        
        // 组合模式
        compositeInit();
        
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
void sunInit(void) {
    Sun *s = [Sun shareInstance];
    Sun *s1 = [s copy];
    Sun *s2 = [s mutableCopy];
    Sun *s3 = [s1 copy];
    NSLog(@"s: %p, s1: %p, s2: %p, s3: %p", s, s1, s2, s3);
}


/**
 定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类
 */
void factoryMethod(void) {
    Product *a = [FactoryA createProduct];
    Product *b = [FactoryB createProduct];
    NSLog(@"a: %@, b: %@", a, b);
}


/**
 将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示
 */
void builderInit(void) {
    Director *d = [[Director alloc] init];
    d.builder = [[Builder alloc] init];
    [d createGoods];
}


/**
 将一个类的接口变换成客户端所期待的另一种接口，从而使原本因接口不匹配而无法在一起工作的两个类能够在一起工作
 继承Target实现Adaptee接口
 */
void adapterInit(void) {
    Adapter *ad = [[Adapter alloc] init];
    [ad doAdapteeThings];
}


/**
 将抽象和实现解耦，使得两者可以独立地变化
 */
void bridgeInit(void) {
    ImplementorSub *im = [[ImplementorSub alloc] init];
    [im currentClass];
    [im doSomething];
    [im doAnything];
}


/**
 动态地给一个对象添加一些额外的职责。就增加功能来说，装饰模式相比生成子类更为灵活
 */
void decoratorInit(void) {
    Decorator *d = [[Decorator alloc] init];
    Component *component = [[Component alloc] init];
    component.decorator = d;
    [component operate];
}



/**
 将对象组合成树形结构以表示“部分-整体”的层次结构，使得用户对单个对象和组合对象的使用具有一致性。
 */
void compositeInit (void) {
    Composite *root = [[Composite alloc] init];
    Composite *branch = [[Composite alloc] init];
    Leaf *leaf = [[Leaf alloc] init];
    [root add:branch];
    [branch add:leaf];
    [Composite display:root];
    
}










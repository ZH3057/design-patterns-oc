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
#import "Facade.h"
#import "FlyweightFactory.h"
#import "Proxy.h"
#import "Handler.h"
#import "Invoker.h"
#import "Mediator.h"
#import "ObserverCenter.h"

void peopleInit(void);
void sunInit (void);
void factoryMethod (void);
void builderInit (void);
void adapterInit(void);
void bridgeInit(void);
void decoratorInit(void);
void compositeInit (void);
void facadeInit (void);
void flyweightInit (void);
void proxyInit (void);
void chainOfResponsibilityInit (void);
void commandInit (void);
void mediatorInit (void);
void observerInit (void);

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
        
        // 门面模式/外观模式
        facadeInit();
        
        // 享元模式
        flyweightInit();
        
        // 代理模式
        proxyInit();
        
        // 责任链模式
        chainOfResponsibilityInit();
        
        // 命令模式
        commandInit();
        
        // 中介者模式
        mediatorInit();
        
        // 观察者模式
        observerInit();
        
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
 工厂方法
 定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类
 */
void factoryMethod(void) {
    Product *a = [FactoryA createProduct];
    Product *b = [FactoryB createProduct];
    NSLog(@"a: %@, b: %@", a, b);
}


/**
 建造者模式
 将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示
 */
void builderInit(void) {
    Director *d = [[Director alloc] init];
    d.builder = [[Builder alloc] init];
    [d createGoods];
}


/**
 适配器模式
 将一个类的接口变换成客户端所期待的另一种接口，从而使原本因接口不匹配而无法在一起工作的两个类能够在一起工作
 继承Target实现Adaptee接口
 */
void adapterInit(void) {
    Adapter *ad = [[Adapter alloc] init];
    [ad doAdapteeThings];
}


/**
 桥接模式
 将抽象和实现解耦，使得两者可以独立地变化
 */
void bridgeInit(void) {
    ImplementorSub *im = [[ImplementorSub alloc] init];
    [im currentClass];
    [im doSomething];
    [im doAnything];
}


/**
 装饰器模式
 动态地给一个对象添加一些额外的职责。就增加功能来说，装饰模式相比生成子类更为灵活
 */
void decoratorInit(void) {
    Decorator *d = [[Decorator alloc] init];
    Component *component = [[Component alloc] init];
    component.decorator = d;
    [component operate];
}



/**
 组合模式
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


/**
 门面模式/外观模式
 要求一个子系统的外部与其内部的通信必须通过一个统一的对象进行。门面模式提供一个高层次的接口，使得子系统更易于使用
 */
void facadeInit (void) {
    Facade *f = [[Facade alloc] init];
    [f moduleAOperate];
    [f moduleBOperate];
}


/**
 享元模式
 使用共享对象可有效地支持大量的细粒度的对象
 */
void flyweightInit (void) {
    FlyweightFactory *factory = [[FlyweightFactory alloc] init];
    [factory getFlyweightWithExtrinsic:@"f1"];
    [factory getFlyweightWithExtrinsic:@"f2"];
    [factory getFlyweightWithExtrinsic:nil];
}


/**
 代理模式
 为其他对象提供一种代理以控制对这个对象的访问
 */
void proxyInit (void) {
    Proxy *p = [[Proxy alloc] init];
    Subject *s = [[Subject alloc] init];
    s.delegate = p;
    [s request];
}

/**
 责任链模式
 使多个对象都有机会处理请求，从而避免了请求的发送者和接受者之间的耦合关系。
 将这些对象连成一条链，并沿着这条链传递该请求，直到有对象处理它为止
 */
void chainOfResponsibilityInit(void) {
    Handler *h1 = [[Handler alloc] initWithLevelNum:1];
    Handler *h2 = [[Handler alloc] initWithLevelNum:2];
    Handler *h3 = [[Handler alloc] initWithLevelNum:3];
    [h1 setNext:h2];
    [h2 setNext:h3];
    Request *request = [[Request alloc] initWithLevelNum:2];
    [h1 handleMessage:request];
}


/**
 命令模式
 将一个请求封装成一个对象，从而让你使用不同的请求把客户端参数化，对请求排队或者记录请求日志，可以提供命令的撤销和恢复功能
 */
void commandInit (void) {
    Receiver *r = [[Receiver alloc] init];
    Command *c = [[Command alloc] initWithReceiver:r];
    Invoker *i = [[Invoker alloc] initWithCommond:c];
    [i action];
}


/**
 用一个中介对象封装一系列的对象交互，中介者使各对象不需要显示地相互作用，
 从而使其耦合松散，而且可以独立地改变它们之间的交互
 */
void mediatorInit (void) {
    Mediator *m = [[Mediator alloc] init];
    Colleague *c = [[Colleague alloc] initWithMediator:m];
    Manager *mrg = [[Manager alloc] initWithMediator:m];
    
    m.colleague = c;
    m.manager = mrg;
    
    [c depMethod];
    [mrg depMethod];
}

void observerInit (void) {
    ObserverCenter *center = [[ObserverCenter alloc] init];
    Observer *o = [[Observer alloc] init];
    [center addObserver:o];
    [center notifyObservers];
    [center removeObserver:o];
}




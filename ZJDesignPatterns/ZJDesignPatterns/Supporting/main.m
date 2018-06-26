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

void peopleInit(void);

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        peopleInit();
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}


void peopleInit(void) {
    
    People *p1 = [[People alloc] initWithName:@"A" age:12 sex:SexType_male];
    People *p2 = [p1 copy];
    NSLog(@"p1: %@", p1);
    NSLog(@"p2: %@", p2);
    
}

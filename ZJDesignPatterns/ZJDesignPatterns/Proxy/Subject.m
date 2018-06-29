//
//  Subject.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Subject.h"

@interface Subject ()

@end


@implementation Subject

- (void)request {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(requestBefore)]) {
        [self.delegate requestBefore];
    }
    
    //.... request action
    NSLog(@"Do request action");
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(requestAfter)]) {
        [self.delegate requestAfter];
    }
}

@end

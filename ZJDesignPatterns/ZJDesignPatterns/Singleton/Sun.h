//
//  Sun.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/26.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sun : NSObject <NSCopying, NSMutableCopying>

+ (instancetype)shareInstance;

@end

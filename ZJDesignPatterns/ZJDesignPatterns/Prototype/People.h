//
//  People.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/26.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, SexType) {
    SexType_male,
    SexType_female,
    SexType_other,
};

@interface People : NSObject <NSCopying>

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, assign)  SexType sex;

//- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil NS_UNAVAILABLE;

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(SexType)sex;

@end

//
//  Subject.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/29.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubjectDelegate <NSObject>

@optional

- (void)requestBefore;

- (void)requestAfter;

@required

@end

@interface Subject : NSObject

@property (nonatomic, strong) id<SubjectDelegate> delegate;

- (void)request;

@end

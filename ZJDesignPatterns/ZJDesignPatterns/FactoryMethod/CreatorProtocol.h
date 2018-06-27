//
//  CreatorProtocol.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;

@protocol CreatorProtocolDelegate <NSObject>

@optional

+ (Product *)createProduct;

@required

@end

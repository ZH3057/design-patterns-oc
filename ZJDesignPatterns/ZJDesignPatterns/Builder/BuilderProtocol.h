//
//  BuilderProtocol.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Goods;

@protocol BuilderProtocolDeletegate <NSObject>

@optional

- (Goods *)buildGoods;

- (void)setPart;

@required

@end

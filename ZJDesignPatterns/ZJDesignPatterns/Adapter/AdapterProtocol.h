//
//  AdapterProtocol.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/27.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdapterProtocolDelegate <NSObject>

@optional

- (void)doAdapteeThings;

@required

@end

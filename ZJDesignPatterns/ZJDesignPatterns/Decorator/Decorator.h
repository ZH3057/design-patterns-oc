//
//  Decorator.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Component.h"
#import "ComponentDecorateProtocol.h"

@interface Decorator : NSObject <ComponentDecorateProtocolDelegate>

@end

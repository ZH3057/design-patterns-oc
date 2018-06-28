//
//  Composite.h
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "TreeItem.h"

@interface Composite : TreeItem

- (void)add:(TreeItem *)item;

- (void)remove:(TreeItem *)item;

- (NSArray<TreeItem *> *)getChildren;

+ (void)display:(Composite *)root;

@end

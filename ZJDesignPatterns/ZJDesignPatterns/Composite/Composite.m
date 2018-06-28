//
//  Composite.m
//  ZJDesignPatterns
//
//  Created by Jun Zhou on 2018/6/28.
//  Copyright © 2018年 Jun Zhou. All rights reserved.
//

#import "Composite.h"
#import "Leaf.h"

@interface Composite ()

@property (nonatomic, strong) NSMutableArray<TreeItem *> *treeItemArray;

@end


@implementation Composite

- (instancetype)init {
    self = [super init];
    if (self) {
        _treeItemArray = [[NSMutableArray<TreeItem *> alloc] init];
    }
    return self;
}

- (void)doSomething {
    NSLog(@"Composite");
}

- (void)add:(TreeItem *)item {
    [self.treeItemArray addObject:item];
}

- (void)remove:(TreeItem *)item {
    [self.treeItemArray removeObject:item];
}

- (NSArray<TreeItem *> *)getChildren {
    return self.treeItemArray.copy;
}

+ (void)display:(Composite *)root {
    for (TreeItem *item in root.getChildren) {
        [item doSomething];
        if ([item isKindOfClass:[Leaf class]]) {
        
        } else {
            [self display:(Composite *)item];
        }
    }
}

@end

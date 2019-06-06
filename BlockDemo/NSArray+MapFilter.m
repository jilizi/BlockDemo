//
//  NSArray+MapFilter.m
//  BlockDemo
//
//  Created by 杨强 on 11/5/2019.
//  Copyright © 2019 YQ. All rights reserved.
//

#import "NSArray+MapFilter.h"

@implementation NSArray (MapFilter)

- (ArrayMap)map {
    
    ArrayMap map = ^NSArray *(ItemMap itemMap) {
        NSMutableArray *items = @[].mutableCopy;
        for (id item in self) {
            [items addObject:itemMap(item)];
        }
        return items;
    };
    
    return map;
}

- (ArrayFilter)filter {
    
    ArrayFilter filter = ^NSArray *(ItemFilter itemFilter) {
        NSMutableArray *items = @[].mutableCopy;
        for (id item in self) {
            if (itemFilter(item)) {
                [items addObject: item];
            }
        }
        return items;
    };
    
    return filter;
}

@end

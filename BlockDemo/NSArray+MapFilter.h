//
//  NSArray+MapFilter.h
//  BlockDemo
//
//  Created by 杨强 on 11/5/2019.
//  Copyright © 2019 YQ. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//数组元素转换
typedef id (^ItemMap)(id item);
typedef NSArray *(^ArrayMap)(ItemMap itemMap);

//数组元素筛选
typedef BOOL(^ItemFilter)(id item);
typedef NSArray *(^ArrayFilter)(ItemFilter itemFilter);

/**
 *  扩展数组高级方法仿swift调用
 */
@interface NSArray (MapFilter)

@property (nonatomic, copy, readonly)ArrayMap map;
@property (nonatomic, copy, readonly)ArrayFilter filter;

@end

NS_ASSUME_NONNULL_END

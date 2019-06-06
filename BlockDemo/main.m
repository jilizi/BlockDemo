//
//  main.m
//  BlockDemo
//
//  Created by YQ on 16/4/8.
//  Copyright © 2016年 YQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

typedef void(^blk_t)(id obj);

int main(int argc, char * argv[]) {
    
//    __block int val = 0;
//    int val1 = 0;
//    NSLog(@"%d,%p,%p\n",val,&val,&val1);
//    void (^blk)(void) = [^{
//        ++val;
//        NSLog(@"%d,%p\n",val,&val);
//    } copy];
//    ++val;
//    NSLog(@"%d,%p\n",val,&val);
//    blk();
//    NSLog(@"%d,%p]\n",val,&val);
    
//    int val = 0;
//    NSLog(@"%p",&val);
//    val = 0;
//    NSLog(@"a1 = %p",&val);
    /*
    blk_t blk;
    {
        id array = [[NSMutableArray alloc] init];
        __block id __weak array2 = array;
        blk = [^(id obj){
            [array2 addObject:obj];
            NSLog(@"array count = %lu",(unsigned long)[array2 count]);
        } copy];
    }
    
    blk([[NSObject alloc] init]);
    blk([[NSObject alloc] init]);
    */

    
//    __weak NSArray *array = [[NSArray alloc] init];
//    @autoreleasepool {
////        __weak typeof(array) array0 = array;
//////        __strong array1 = array0;
//        NSLog(@"array = %p",array);
//    }
//    NSLog(@"array = %p",array);
    
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

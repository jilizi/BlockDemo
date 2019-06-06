//
//  SendMessageViewController.m
//  BlockDemo
//
//  Created by YQ on 16/4/8.
//  Copyright © 2016年 YQ. All rights reserved.
//

#import "SendMessageViewController.h"

@interface SendMessageViewController ()

@end

@implementation SendMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)dealloc{    
    NSLog(@"SendMessageViewController   ------  dealloc");
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter
- (int (^)(int))block{
    return ^(int a){
        return a;
    };
}

- (Myblock)blockWithParaAndReturn{
    return ^(int a){
        return a;
    };
}

- (int (^)(void))blockWithNoPara{
    return ^(void){
        return 1;
    };
}

- (void (^)(int))blockWithNoReturn{
    return ^(int a){
        NSLog(@"%d",a);
    };
}

- (WeakBlk)weakBlk{
    
    __weak typeof(self) weakSelf = self;
    
    return [^{
//        __strong typeof(weakSelf) strongSelf = weakSelf;  // 在block作用域里面持有self,保证在block执行过程中self不会被释放掉（废弃掉）
        NSLog(@"start === %@",weakSelf);
        
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            NSLog(@"after  ===  %@",weakSelf);
//        });
        
        sleep(5);
        NSLog(@"after **** %@",weakSelf);
        
    } copy];

}


@end

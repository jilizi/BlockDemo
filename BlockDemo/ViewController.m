//
//  ViewController.m
//  BlockDemo
//
//  Created by YQ on 16/4/8.
//  Copyright © 2016年 YQ. All rights reserved.
//

#import "ViewController.h"
#import "SendMessageViewController.h"
#import "NSArray+MapFilter.h"


@interface ViewController ()

//定义一个block的属性
@property (nonatomic , copy)void (^receiveBlk)(void);

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//高阶函数应用 (函数链式调用)
#pragma mark - 筛选数组中大于20的数值并转换成字符串
    NSArray<NSNumber *> * numbers = @[@10.f, @15.f, @99.f, @66.f, @25.f, @28.1f, @7.5f, @11.2f, @66.2f];
    NSArray *result = numbers.filter(^BOOL(NSNumber * item) {
        return item.doubleValue > 20;
    }).map(^id(NSNumber * item) {
        return [NSString stringWithFormat:@"string %@", item];
    });
    NSLog(@"%@", result);
    
#pragma mark - 将数组中的字典转换成对应的数据模型
//    NSArray<NSDictionary *> * jsons = @[@{@"name" : @"小明", @"area" : @"中国"}, @{@"name" : @"小明", @"area" : @"中国"}, @{@"name" : @"小明", @"area" : @"中国"}];
//    NSArray<Model *> * models = jsons.map(^id(id item) {
//        return [[Model alloc] initWithJSON:item];
//    });
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (self.receiveBlk) {
        self.receiveBlk();
    }
    
}

- (IBAction)btnClicked:(id)sender {
    SendMessageViewController *sendMSGVC = [[SendMessageViewController alloc] init];
    self.receiveBlk = sendMSGVC.weakBlk;
    [self.navigationController pushViewController:sendMSGVC animated:true];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  SendMessageViewController.h
//  BlockDemo
//
//  Created by YQ on 16/4/8.
//  Copyright © 2016年 YQ. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef int(^Myblock)(int a);
typedef void(^WeakBlk)(void);

@interface SendMessageViewController : UIViewController

@property (nonatomic , copy)int (^block)(int a);
@property (nonatomic , copy)int (^blockWithNoPara)(void);
@property (nonatomic , copy)void (^blockWithNoReturn)(int a);

@property (nonatomic , copy)Myblock blockWithParaAndReturn;
@property (nonatomic , copy)WeakBlk weakBlk;

@end

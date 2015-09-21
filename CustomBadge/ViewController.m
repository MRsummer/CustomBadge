//
//  ViewController.m
//  CustomBadge
//
//  Created by ZhuGuangwen on 15/9/21.
//  Copyright © 2015年 wepie. All rights reserved.
//

#import "ViewController.h"
#import "UITabBar+CustomBadge.h"

@implementation ViewController{
    NSInteger number;
    CustomBadgeType type;
}

-(instancetype)initWithText:(NSString *)text{
    if(self = [super init]){
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
        label.text = text;
        label.textColor = [UIColor redColor];
        [self.view addSubview:label];
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 100)];
        [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [button setTitle:@"change badge" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(changeBadge:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        
        number = 100;
        type = kCustomBadgeStyleNone;
    }
    return self;
}

-(void)changeBadge:(UIButton *)btn{
    NSInteger index = [self.tabBarController.tabBar.items indexOfObject:self.tabBarItem];
    if(type == kCustomBadgeStyleNone){
        type = kCustomBadgeStyleNumber;
    }else if(type  == kCustomBadgeStyleNumber){
        if(number == 100){
            number = 1;
        }else if(number == 1){
            number = 10;
        }else if(number == 10){
            number = 100;
            type = kCustomBadgeStyleRedDot;
        }
    }else if(type == kCustomBadgeStyleRedDot){
        type = kCustomBadgeStyleNone;
    }
    [self.tabBarController.tabBar setBadgeStyle:type value:number atIndex:index];
}

@end

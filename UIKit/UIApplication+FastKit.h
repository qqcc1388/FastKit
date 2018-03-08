//
//  UIApplication+FastKit.h
//  Zing
//
//  Created by Tiny on 2018/1/12.
//  Copyright © 2018年 Tiny. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TOPNAVI     [UIApplication sharedApplication].navHeight
#define BOMTAB      [UIApplication sharedApplication].tabHeight

@interface UIApplication (FastKit)

@property (nonatomic, strong) UIViewController* currenController;

@property (nonatomic, assign, readonly) CGFloat navHeight;

@property (nonatomic, assign, readonly) CGFloat tabHeight;


+(UIViewController*)rootViewController;

-(void)detectModels;

@end

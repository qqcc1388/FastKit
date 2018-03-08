//
//  UIApplication+FastKit.m
//  Zing
//
//  Created by Tiny on 2018/1/12.
//  Copyright © 2018年 Tiny. All rights reserved.
//

#import "UIApplication+FastKit.h"
#import <objc/runtime.h>

@implementation UIApplication (FastKit)

static char topHeight;
static char bottomHeight;

-(void)setTabHeight:(CGFloat)tabHeight{
    objc_setAssociatedObject(self, &bottomHeight, [NSString stringWithFormat:@"%f",tabHeight], OBJC_ASSOCIATION_COPY);
}

-(CGFloat)tabHeight{
    return [objc_getAssociatedObject(self, &bottomHeight) floatValue];
}

-(void)setNavHeight:(CGFloat)navHeight{
    objc_setAssociatedObject(self, &topHeight, [NSString stringWithFormat:@"%f",navHeight], OBJC_ASSOCIATION_COPY);
}
-(CGFloat)navHeight{
    return [objc_getAssociatedObject(self, &topHeight) floatValue];
}

-(void)setCurrenController:(UIViewController *)currenController{
    objc_setAssociatedObject(self, @selector(currenController), currenController, OBJC_ASSOCIATION_RETAIN);
}

-(UIViewController*)currenController{
    return objc_getAssociatedObject(self, _cmd);
}

+(UIViewController*)rootViewController{
    return [self sharedApplication].delegate.window.rootViewController;
}

-(void)detectModels{
    
    CGFloat screenHeight = SCREEN_HEIGHT;
    if (screenHeight == 812) {
        self.navHeight = 88;
        self.tabHeight = 83;
    }
    else{
        self.navHeight = 64;
        self.tabHeight = 49;
    }
}


@end
